#!/bin/bash

# Use Python 3.10 explicitly
python3.10 -m pip install -r requirements.txt

# Set Python path
export PYTHONPATH=$PYTHONPATH:$(pwd)

# Collect static files
python3.10 manage.py collectstatic --noinput 