from django.urls import path
from . import views

urlpatterns = [
    path('signup',views.signup),
    path('user_login',views.user_login),
    path('faq',views.faq),
    path('about',views.about),
    path('contact-us',views.contact),
    path('feedback',views.feedback),
    path('logout',views.logout),
    ]