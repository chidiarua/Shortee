#!/bin/bash

# Upgrade pip first
python3 -m pip install --upgrade pip

# Install dependencies with verbose output
python3 -m pip install -r requirements.txt --verbose

# Set Python path
export PYTHONPATH=$PYTHONPATH:$(pwd)

# Verify Django installation
python3 -c "import django; print(django.__version__)"

# Collect static files
python3 manage.py collectstatic --noinput 