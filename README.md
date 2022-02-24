# Django Backend API Template

Django backend api template make develop new project more convenient.

### Folder Structure

```
.
├── Dockerfile
├── README.md
├── app
│   ├── api
│   │   ├── __init__.py
│   │   ├── admin.py
│   │   ├── apps.py
│   │   ├── migrations
│   │   │   ├── 0001_initial.py
│   │   │   └── __init__.py
│   │   ├── models.py
│   │   ├── tests.py
│   │   └── views.py
│   ├── gunicorn.py
│   ├── main
│   │   ├── __init__.py
│   │   ├── asgi.py
│   │   ├── settings.py
│   │   ├── urls.py
│   │   └── wsgi.py
│   ├── manage.py
│   └── requirements.txt
├── docker-compose.yml
├── log
│   ├── gunicorn
│   │   ├── access.log
│   │   └── error.log
│   └── nginx
│       ├── access.log
│       └── error.log
├── nginx
│   └── nginx.conf
└── start.sh
```

### Local Deploy

```
# Copy .env and write local environment
$ cp .env.example .env

# Build docker services
$ docker-compose -f docker-compose-dev.yml up -d --build
```

### Production Deploy

```
# Copy .env and write production environment
$ cp .env.example .env

# Build docker services
$ docker-compose up -d --build
```

### Reference

-  https://docs.djangoproject.com/en/4.0/
-  https://www.django-rest-framework.org/
