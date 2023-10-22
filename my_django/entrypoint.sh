#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo **************************************************************
    echo "Waiting for postgres..."
    echo **************************************************************
    sleep 10
    echo "PostgreSQL started"
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"
