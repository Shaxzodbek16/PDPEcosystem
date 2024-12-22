from django.shortcuts import render, redirect
from .models import AboutWorker, Company, Feedback


def about(request):
    info = Company.objects.all().order_by("-date")
    context = {"info": info, "html_name": "about", "title": "Web developer"}
    return render(request, "about/index.html", context=context)


def workers_info(request):
    info = AboutWorker.objects.all().order_by("-place")
    context = {"info": info, "html_name": "workers_info", "title": "Workers"}
    return render(request, "about/index.html", context=context)


def feedback(request):
    if request.method == "POST":
        name = request.POST.get("name")
        email = request.POST.get("email")
        message = request.POST.get("message")
        f = Feedback(name=name, email=email, message=message)
        if name.strip() == "" and email.strip() == "":
            return redirect("feedback")
        else:
            f.save()
            return redirect("about")
    else:
        return render(
            request=request,
            template_name="about/index.html",
            context={
                "html_name": "feedback",
                "title": "Feedback",
            },
        )
