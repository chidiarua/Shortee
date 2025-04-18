#!/bin/bash

# Install Python dependencies
pip3 install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput 