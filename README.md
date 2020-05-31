# Django Watchman Example
That example project shows how to use the watchman reloader into a dockerized django app.

To start the server and follow the container logs, run:
```bash
docker-compose build
docker-compose up -d
docker-compose logs -f
```