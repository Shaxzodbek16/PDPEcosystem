# Generated by Django 5.0.4 on 2024-04-21 14:58

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Students",
            fields=[
                (
                    "id",
                    models.BigAutoField(
                        auto_created=True,
                        primary_key=True,
                        serialize=False,
                        verbose_name="ID",
                    ),
                ),
                ("student_id", models.IntegerField()),
                ("ism", models.CharField(max_length=50)),
                ("familya", models.CharField(max_length=50)),
                ("yoshi", models.IntegerField()),
                (
                    "sinf",
                    models.CharField(
                        choices=[
                            ("1-kurs", "1-kurs"),
                            ("2-kurs", "2-kurs"),
                            ("3-kurs", "3-kurs"),
                            ("4-kurs", "4-kurs"),
                        ],
                        max_length=10,
                    ),
                ),
                ("addres", models.TextField()),
            ],
        ),
    ]
