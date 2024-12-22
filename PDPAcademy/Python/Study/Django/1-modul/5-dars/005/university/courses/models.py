from django.db import models


class Speciality(models.Model):
    name = models.CharField(max_length=60)
    code = models.CharField(max_length=100)
    start_date = models.DateField(auto_now_add=True)
    is_active = models.BooleanField(default=True)

    def __str__(self) -> str:
        if self.is_active:
            holati = "Bor"
        else:
            holati = "Yo'q"
        return self.name

    class Meta:
        db_table = "Speciality"


class Teacher(models.Model):
    teacher_degrees = (
        ("A1", "A1"),
        ("A2", "A2"),
        ("B1", "B1"),
        ("B2", "B2"),
        ("B3", "B3"),
        ("B4", "B4"),
    )
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    degree = models.CharField(max_length=10, choices=teacher_degrees)

    def __str__(self) -> str:
        return self.first_name

    class Meta:
        db_table = "Teacher"


class Subject(models.Model):
    name = models.CharField(max_length=60)
    specialities = models.ForeignKey(Speciality, on_delete=models.CASCADE)
    teachers = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self) -> str:
        return self.name

    class Meta:
        db_table = "Subject"
