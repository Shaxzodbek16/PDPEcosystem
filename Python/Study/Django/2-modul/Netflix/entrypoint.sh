#!/bin/bash

sleep 10
python3 manage.py migrate
python3 manage.py runserver

