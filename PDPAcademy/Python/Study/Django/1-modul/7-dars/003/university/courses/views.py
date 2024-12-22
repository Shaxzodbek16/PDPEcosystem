from django.shortcuts import render
from django.http import HttpResponse


def say_hello(request):
    name = request.GET.get("name", "PDP")
    return HttpResponse(f"Hello, {name}!")
