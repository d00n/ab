from django.shortcuts import render
from django.template import loader
from django.http import HttpResponse
from . import urls


def index(request):
    template = loader.get_template('home_page.html')
    context = {'foo':'bar',}
    return HttpResponse(template.render(context, request))

def contact(request):
    return HttpResponse("Hello contact")

def private_events(request):
    return HttpResponse("Hello private_events")
