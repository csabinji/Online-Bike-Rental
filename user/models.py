from django.db import models

class Feedback(models.Model):
    fullname = models.CharField(max_length=50)
    mobileno = models.CharField(max_length=50)
    emailid = models.CharField(max_length=50)
    message = models.CharField(max_length=500)

