#!/bin/sh
easy_install virtualenv
echo "Building VE..."
virtualenv --no-site-packages ve
echo "Installing requirements..."
./ve/bin/pip install -r requirements.txt
echo "Running tests..."
./ve/bin/python manage.py test demo
echo "Cleaning up..."
rm -rf ./ve
