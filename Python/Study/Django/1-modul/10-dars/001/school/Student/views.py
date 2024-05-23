from django.http import HttpResponse
from django.shortcuts import render, redirect
from .models import *

def index(request):
    return render(request, 'index.html')

def add_student(request):
    if request.method == 'POST':
        ism=request.POST['ism']
        familya=request.POST['familya']
        yoshi=request.POST['yoshi']
        sinf=request.POST['sinf']
        addres=request.POST['addres'].strip()
        student_id = request.POST['student_id']
    
        student=Students()
        
        student.ism=ism
        student.familya=familya
        student.yoshi=yoshi
        student.sinf=sinf
        student.addres=addres
        student.student_id= student_id
        student.save()
    return render(request, 'add_student.html')

def show_student(request):
    context={
        'students':Students.objects.all().order_by('ism')
    }
    return render(request,'show_student.html', context=context)


def update_student(request):
    if request.method == 'POST':
        student_id = request.POST['student_id']
        ism = request.POST['ism']
        familya = request.POST['familya']
        yoshi = request.POST['yoshi']
        sinf = request.POST['sinf']
        addres = request.POST['addres'].strip()
        try:
            student = Students.objects.get(student_id=student_id)
            student.ism = ism
            student.familya = familya
            student.yoshi = yoshi
            student.sinf = sinf
            student.addres = addres
            student.save()
        except Students.DoesNotExist:
            return HttpResponse(f"Not found by {student_id}")
    return render(request, 'update_student.html')


def delete_student(request):
    if request.method == 'POST':
        student_id = request.POST['student_id']
        student=Students.objects.filter(student_id=student_id)
        student.delete()
    return render(request, 'delete_student.html')


def not_fount(request):
    return render(request, '404.html', status=404)


# def search_student(request):
#     print("hello")
#     if request.method == 'POST':
#         print("student_id")
#         student_id = request.POST['student_id']
#         try:
#             student = Students.objects.filter(student_id=student_id)
#             return render(request, 'search_student.html', {'student': student})
#         except Students.DoesNotExist:
#             return HttpResponse(f"Not found by {student_id}")
#     else:
#         return render(request, 'search_student.html')

def search_student(request):
    context = {}
    if request.method == 'POST':
        print(f"POST data: {request.POST}")  
        student_id = request.POST.get('student_id')
        print(f"Student ID: {student_id}")  
        try:
            student = Students.objects.get(student_id=student_id)
            context['student'] = student
        except Students.DoesNotExist:
            context['message'] = f"Not found student under {student_id} id."
    return render(request, 'search_student.html', context)
