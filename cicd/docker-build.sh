#!/bin/bash

ENV_FILE=app/backend/.env

APP_VERSION=$1

DB_VERSION=$2

DB_HOST=$3

DB_NAME=$4

DB_USER=$5

DB_PASSWORD=$6

echo "DB_HOST=$DB_HOST" > $ENV_FILE
echo "DB_NAME=$DB_NAME" >> $ENV_FILE
echo "DB_USER=$DB_USER" >> $ENV_FILE
echo "DB_PASSWORD=$DB_PASSWORD" >> $ENV_FILE

docker build -f docker/app/Dockerfile -t lteixeiramnc/app-dio-kubernetes:$APP_VERSION app/.

docker build -f docker/database/Dockerfile -t lteixeiramnc/database-dio-kubernetes:$DB_VERSION database/.

docker push lteixeiramnc/app-dio-kubernetes:$APP_VERSION

docker push lteixeiramnc/database-dio-kubernetes:$DB_VERSION