from django.shortcuts import render
from django.http import HttpResponse


def say_hello(request, name):
    return HttpResponse(f"Hello, {name}!")


def say_hello_to_PDP(request):
    return HttpResponse(f"Hello, PDP!")
