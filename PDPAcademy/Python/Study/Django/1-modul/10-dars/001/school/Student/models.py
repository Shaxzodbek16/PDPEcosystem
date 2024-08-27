from django.db import models


class Students(models.Model):
    sinf_tanla = (
        ('1-kurs', '1-kurs'),
        ('2-kurs', '2-kurs'),
        ('3-kurs', '3-kurs'),
        ('4-kurs', '4-kurs')
    )

    ism = models.CharField(max_length=50)
    familya = models.CharField(max_length=50)
    yoshi = models.IntegerField()
    sinf = models.CharField(max_length=10, choices=sinf_tanla, blank=False)
    addres = models.TextField()
    student_id = models.IntegerField(unique=True)

    def __str__(self) -> str:
        return f"{self.ism} {self.familya} talaba {self.sinf}-kursda o'qiydi"

    class Meta:
        db_table = 'Students'
