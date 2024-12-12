#!/bin/bash

echo "The app started successfully !"

uvicorn main:app --reload

sleep 1

echo "The app stopped successfully!"
