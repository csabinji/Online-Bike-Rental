from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render,redirect
from django.core.files.storage import FileSystemStorage
from user.models import Feedback
from django.contrib.auth.models import User,auth

def feedback(request):
    if request.method == "POST":
        fullname = request.POST['fullname']
        emailid = request.POST['emailid']
        mobileno = request.POST['mobileno']
        message = request.POST['message']

        form = Feedback(fullname=fullname,emailid=emailid,mobileno=mobileno,message=message)
        form.save()
        return redirect('/')
    else:
        form = Feedback()
    return render(request, "index.htm", {'form': form})

def signup(request):
    if request.method=="POST":
        username = request.POST['username']
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        email = request.POST['email']
        password = request.POST['password']
        form = User.objects.create_user(username=username,first_name=first_name,last_name=last_name,email=email,password=password)
        form.save()
        return redirect('/')
    else:
        return render(request,'signup.html')

def user_login(request):
    if request.method=="POST":
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username = username,password=password)
        if user is not None:
            auth.login(request, user)
            return redirect('/')
        else:
            messages.info(request,"Invalid Username or Password!!")
            return redirect('/')
    else:
        return render(request,"index.html")

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact-us.html')

def bikelisting(request):
    return render(request,'bikelisting.html')

def faq(request):
    return render(request,'faq.html')

def logout(request):
    auth.logout(request)
    return redirect('/')
