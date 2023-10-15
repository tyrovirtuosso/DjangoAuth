# Builder
FROM python:3.12.0-alpine3.18 as builder
LABEL maintainer="tyrovirtuosso@proton.me"

# Starting environment variables
ARG SECRET_KEY
ARG DEBUG
ARG TIMEZONE
ARG CORS_DOMAIN
ARG CACHE_URL
ARG DB_ENGINE
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_HOST
ARG DB_PORT
ARG GOOGLE_AUTH_KEY
ARG GOOGLE_AUTH_SECRET_KEY
ARG AUTH_COOKIE_SECURE
ARG REDIRECT_URLS
ARG AWS_SES_ACCESS_KEY_ID
ARG AWS_SES_SECRET_ACCESS_KEY
ARG AWS_SES_REGION_NAME
ARG AWS_SES_FROM_EMAIL
ARG DOMAIN

# Starting environment varibles
ENV APP_DIRECTORY=/app/
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR $APP_DIRECTORY
COPY requirements.txt ./

# Install build dependencies for CFFI and other packages
RUN apk add --no-cache build-base libffi-dev

# Setup virtual environment and install dependencies
RUN python -m venv /opt/venv \
    && /opt/venv/bin/pip install --upgrade pip \
    && /opt/venv/bin/pip install --no-cache-dir --quiet -r requirements.txt

# Install setuptools via pip
RUN /opt/venv/bin/pip install --no-cache-dir --upgrade setuptools

# Copy app into image working directory
COPY . .
ENV VIRTUAL_ENV="/opt/venv"
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# local
FROM builder as dev
EXPOSE 8000

# Add environment variables for your Django app
ENV SECRET_KEY=${SECRET_KEY} \
    DEBUG=${DEBUG} \
    TIMEZONE=${TIMEZONE} \
    CORS_DOMAIN=${CORS_DOMAIN} \
    CACHE_URL=${CACHE_URL} \
    DB_ENGINE=${DB_ENGINE} \
    DB_NAME=${DB_NAME} \
    DB_USER=${DB_USER} \
    DB_PASSWORD=${DB_PASSWORD} \
    DB_HOST=${DB_HOST} \
    DB_PORT=${DB_PORT} \
    GOOGLE_AUTH_KEY=${GOOGLE_AUTH_KEY} \
    GOOGLE_AUTH_SECRET_KEY=${GOOGLE_AUTH_SECRET_KEY} \
    AUTH_COOKIE_SECURE=${AUTH_COOKIE_SECURE} \
    REDIRECT_URLS=${REDIRECT_URLS} \
    AWS_SES_ACCESS_KEY_ID=${AWS_SES_ACCESS_KEY_ID} \
    AWS_SES_SECRET_ACCESS_KEY=${AWS_SES_SECRET_ACCESS_KEY} \
    AWS_SES_REGION_NAME=${AWS_SES_REGION_NAME} \
    AWS_SES_FROM_EMAIL=${AWS_SES_FROM_EMAIL} \
    DOMAIN=${DOMAIN}

# Run makemigrations and migrate
# RUN python manage.py makemigrations
# RUN python manage.py migrate

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
