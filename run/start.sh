#! /usr/bin/env sh
# Start Supervisor, with Nginx and uWSGI
exec /usr/bin/supervisord -c /app/run/supervisord.conf