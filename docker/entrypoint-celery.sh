#!/bin/sh

C_FORCE_ROOT=true exec celery --app=app \
  worker \
  --pool=solo \
  --loglevel="INFO" \
  --concurrency=1
