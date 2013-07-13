#!/bin/sh
echo "Building VE"
virtualenv --no-site-packages ve
./ve/bin/pip install -r requirements.txt
./ve/bin/python manage.py test demo
rm -rf ./ve
