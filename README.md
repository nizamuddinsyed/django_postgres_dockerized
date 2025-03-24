# Steps to build and run Django app in a Docker container

### Step - 1
docker-compose up --build

### Step - 2
docker compose exec web python manage.py makemigrations
docker compose exec web python manage.py migrate

### Step - 3
docker compose exec web python manage.py createsuperuser

### Step - 4
webapp --> localhost:8000
admin panel --> localhost:8000/admin
database webapp -> localhost:5050

### Step - 5
docker compose logs web

### Step - 6
docker compose down

