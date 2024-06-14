#!/bin/bash

sleep 5
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver

