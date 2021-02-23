from bikerental import settings
from django.db import models
from django.contrib.auth.models import User

class Bike(models.Model):
    vehicletitle = models.CharField(max_length=50)
    Brand = models.CharField(max_length=50)
    vehicalorcview = models.CharField(max_length=500)
    priceperday = models.CharField(max_length=50)
    bikenum = models.CharField(max_length=50)
    engine = models.CharField(max_length=50)
    img1 = models.CharField(max_length=50)

class Book(models.Model):
    fromdate = models.CharField(max_length=50)
    todate = models.CharField(max_length=50)
    message = models.CharField(max_length=500)