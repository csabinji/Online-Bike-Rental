from django.urls import path
from . import views

urlpatterns = [
    path('',views.index),
    path('postbike',views.postbike),
    path('bike_insert',views.bike_insert),
    path('bikelisting',views.bikelisting),
    path('bikedetail/<id>',views.bikedetail),
    path('book',views.book),
    path('manage',views.manage),
    path('bike/delete/<id>',views.bike_delete),
    path('update/<id>',views.update),
    path('bike_update/<id>',views.bike_update),


]