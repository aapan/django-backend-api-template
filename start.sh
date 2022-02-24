#!/bin/sh
python manage.py migrate
python manage.py collectstatic --noinput
/usr/local/bin/gunicorn -c gunicorn.py main.wsgi
