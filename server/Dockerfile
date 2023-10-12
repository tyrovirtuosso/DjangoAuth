# Builder
FROM python:3.12.0-alpine3.18 as builder
LABEL maintainer="tyrovirtuosso@proton.me"
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
# Copy app into image working directory
COPY . .
ENV VIRTUAL_ENV="/opt/venv"
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# local
FROM builder as dev
EXPOSE 8000
RUN python manage.py makemigrations
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
