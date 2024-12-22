# Generated by Django 5.0.4 on 2024-04-20 08:34

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("courses", "0004_alter_teacher_degree"),
    ]

    operations = [
        migrations.AlterField(
            model_name="teacher",
            name="degree",
            field=models.CharField(
                choices=[
                    ("A1", "A1"),
                    ("A2", "A2"),
                    ("B1", "B1"),
                    ("B2", "B2"),
                    ("B3", "B3"),
                    ("B4", "B4"),
                ],
                max_length=10,
            ),
        ),
        migrations.CreateModel(
            name="Subject",
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
                ("name", models.CharField(max_length=40)),
                (
                    "specialities",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="courses.speciality",
                    ),
                ),
                (
                    "teacher",
                    models.ForeignKey(
                        on_delete=django.db.models.deletion.CASCADE,
                        to="courses.teacher",
                    ),
                ),
            ],
            options={
                "db_table": "Subject",
            },
        ),
    ]
