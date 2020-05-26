from django.urls import path

from . import views

urlpatterns = [
    path('contact', views.contact, name='contact'),
    path('private_events', views.private_events, name='private_events'),
    path('', views.index, name='index'),
]