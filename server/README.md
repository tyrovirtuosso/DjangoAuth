# LearnEasyApp Web Server

### How was it made?

The web server makes extensive use of the Django ecosystem. It namely uses the below frameworks to
define data models, serialize and expose the API.

- The Django Framework (> 4.0)
- The Django Rest Framework (> 3.13)

It also depends on the following other services being available.

- A message broker, such as [Redis](https://redis.io/).
- The [Celery](https://docs.celeryq.dev/en/stable/) task queue, which is already built into LearnEasyApp
  but is required to be spun up as separate service.
  - This is included in the [docker-compose](/docker-compose.yaml) file, or can be spun up
    separately.
