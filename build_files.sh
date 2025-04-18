#!/bin/bash

# Install Python dependencies
pip install -r requirements.txt

# Set Python path
export PYTHONPATH=$PYTHONPATH:$(pwd)

# Collect static files
python manage.py collectstatic --noinput 