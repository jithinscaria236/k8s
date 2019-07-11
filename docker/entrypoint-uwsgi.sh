#!/bin/sh

umask 0002

exec uwsgi \
  "--socket" "0.0.0.0:3031" \
  --protocol uwsgi \
  --wsgi app.wsgi:application
