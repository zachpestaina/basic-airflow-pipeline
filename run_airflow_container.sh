#!/bin/bash

# Configuration
CONTAINER_NAME="airflow-standalone"
IMAGE_NAME="apache/airflow:slim-latest-python3.13"
DAGS_DIR="/Users/zach/basic-airflow-pipeline/dags"
PORT="8080"

docker run -d \
    --name ${CONTAINER_NAME} \
    -p ${PORT}:8080 \
    -v ${DAGS_DIR}:/opt/airflow/dags \
    ${IMAGE_NAME} \
    standalone
