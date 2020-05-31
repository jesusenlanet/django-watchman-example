# Django Watchman Example
That example project shows how to use the watchman reloader into a dockerized django app.

To start the server and follow the container logs, run:
```bash
docker-compose build
docker-compose up -d
docker-compose logs -f
```

If you read something like:

`Watching for file changes with StatReloader`

Try with a higher value for the `DJANGO_WATCHMAN_TIMEOUT` variable in the `docker-compose.yml` file.

There's also a `.watchmanconfig` file like that:
```json
{
 "ignore_dirs": [".git", ".idea", "venv"]
}
```

If you want configure watchman to ignore some folder, just add that folder to the `ignore_dirs` list.