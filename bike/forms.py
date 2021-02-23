from django import forms
from bike.models import Bike, Book

class BikeForm(forms.ModelForm) :
    class meta:
        model = Bike
        #fields = ("bike_name", "lname")
        fields = "__all__"

class BookForm(forms.ModelForm) :
    class meta:
        model = Book
        #fields = ("bike_name", "lname")
        fields = "__all__"
