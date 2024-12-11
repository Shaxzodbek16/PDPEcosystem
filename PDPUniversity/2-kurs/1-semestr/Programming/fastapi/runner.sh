#!/bin/bash

echo "The app started successfully !"

uvicorn main2:app --reload

sleep 1

echo "The app stopped successfully!"
