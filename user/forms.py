from django import forms
from user.models import Feedback

class FeedbackForm(forms.ModelForm) :
    class meta:
        model = Feedback
        #fields = ("bike_name", "lname")
        fields = "__all__"
