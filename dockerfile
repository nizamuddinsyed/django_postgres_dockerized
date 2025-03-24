FROM python:3.9-slim-buster
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Collect static files
RUN python manage.py collectstatic --noinput

CMD gunicorn core.wsgi:application --bind 0.0.0.0:8000