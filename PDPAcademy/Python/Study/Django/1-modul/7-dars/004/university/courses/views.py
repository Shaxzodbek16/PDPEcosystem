from django.shortcuts import render
from .models import Speciality


def courses(request):
    # return HttpResponse("Hello, world!")
    context = {
        "Specialities": Speciality.objects.all(),
        "is_empty": not Speciality.objects.all().exists(),
    }
    return render(request, "courses/home.html", context=context)
