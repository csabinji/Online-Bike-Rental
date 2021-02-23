from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render,redirect
from bike.forms import BikeForm
from bike.forms import BookForm
from django.core.files.storage import FileSystemStorage
from bike.models import Bike
from bike.models import Book

def index(request):
    return render(request, 'index.htm')

def postbike(request):
    return render(request,'postbike.html')

def bike_insert(request):
    if request.method == "POST":
        vehicletitle = request.POST['vehicletitle']
        Brand = request.POST['Brand']
        vehicalorcview = request.POST['vehicalorcview']
        priceperday = request.POST['priceperday']
        bikenum = request.POST['bikenum']
        engine = request.POST['engine']

        img1 = request.FILES['img1']

        fs = FileSystemStorage();
        user_image1_new = bikenum + img1.name;

        form = Bike(vehicletitle=vehicletitle,vehicalorcview=vehicalorcview,Brand=Brand,priceperday=priceperday,bikenum=bikenum,engine=engine,img1 = user_image1_new)
        form.save()
        fs.save(user_image1_new,img1)
        return redirect('/')
    else:
        form = Bike()
    return render(request, "index.htm", {'form': form})

def bikelisting(request):
    bike = Bike.objects.all()
    return render(request,'bikelisting.html',{'bike':bike})

def bikedetail(request,id):
    bike = Bike.objects.get(id=id)
    return render(request,'bikedetail.html',{'bike1':bike})

def manage(request):
    bike = Bike.objects.all()
    return render(request,'manage.html',{'manage':bike})

def bike_delete(request,id):
    bike = Bike.objects.get(id=id)
    bike.delete()
    return redirect('/')

def update(request,id):
    bike = Bike.objects.get(id=id)
    return render(request,'update.html',{'bike1':bike})

def bike_update(request,id):
    if request.method == "POST":
        bike = Bike.objects.get(id=id)
        bike.vehicletitle = request.POST['vehicletitle']
        bike.Brand = request.POST['Brand']
        bike.vehicalorcview = request.POST['vehicalorcview']
        bike.priceperday = request.POST['priceperday']
        bike.bikenum = request.POST['bikenum']
        bike.engine = request.POST['engine']
        bike.img1 = request.FILES['img1']

        fs = FileSystemStorage();
        bike.user_image1_new = bike.img1.name;

        fs.save(bike.user_image1_new, bike.img1)

        bike.save()
        return redirect('/')

def book(request):
    if request.method == "POST":
        fromdate = request.POST['fromdate']
        todate = request.POST['todate']
        message = request.POST['message']

        form = Book(fromdate=fromdate,todate=todate,message=message)
        form.save()
        return redirect('/')
    else:
        form = book()
    return render(request, "index.htm", {'form': form})

