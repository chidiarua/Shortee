#!/bin/bash

# Use Python 3
python3 -m pip install -r requirements.txt

# Set Python path
export PYTHONPATH=$PYTHONPATH:$(pwd)

# Collect static files
python3 manage.py collectstatic --noinput 