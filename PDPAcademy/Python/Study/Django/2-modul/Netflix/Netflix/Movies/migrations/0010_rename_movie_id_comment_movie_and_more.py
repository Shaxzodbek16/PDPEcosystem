# Generated by Django 5.0.4 on 2024-05-10 14:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("Movies", "0009_alter_comment_user_id"),
    ]

    operations = [
        migrations.RenameField(
            model_name="comment",
            old_name="movie_id",
            new_name="movie",
        ),
        migrations.RenameField(
            model_name="comment",
            old_name="user_id",
            new_name="user",
        ),
    ]
