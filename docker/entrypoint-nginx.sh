#!/bin/sh

umask 0002

echo "uwsgi_pass uwsgi_server;" > /run/uwsgi_pass
echo "server uwsgi:3031;" > /run/uwsgi_server
exec nginx -g "daemon off;"
