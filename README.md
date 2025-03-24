# Steps to build and run Django app in a Docker container

### Command to create new Django project
```
django-admin startproject proj_name .
```

### Step - 1 ( building the containers )
```
docker compose up --build
```

### Step - 2 ( database setup and migrations )
```
docker compose exec web python manage.py makemigrations

docker compose exec web python manage.py migrate
```

### Step - 3 ( creating superuser )
```
docker compose exec web python manage.py createsuperuser
```

### Step - 4 ( accessing the app )
```
webapp --> localhost:8000
admin panel --> localhost:8000/admin
postgres db --> localhost:5050
```

### Step - 5 ( logs of the app )
```
docker compose logs web
```

### Step - 6 ( stop the containers )
```
docker compose down
```

