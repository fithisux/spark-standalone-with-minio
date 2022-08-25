# Spark Cluster that uses mino for S3

Was very hard work for me draw inspiration from bitnami docker images and minio. Use very latest versions and 3.10.xxx python yay.

# General

A simple spark standalone cluster for your testing environment purposses. A *docker-compose up* away from you solution for your spark development environment.

The Docker compose will create the following containers:

container|Exposed ports
---|---
spark-master|9090 7077
spark-worker-1|9091
spark-worker-2|9092
demo-database|5432

# Installation

The following steps will make you run your spark cluster's containers.

## Pre requisites

* Docker installed

* Docker compose  installed


## Run the docker-compose

The final step to create your test cluster will be to run the compose file:

```sh
docker-compose up -d
```

## Acess mini from outside and inside docker

Do yourself a favor and modify in `/etc/hosts` the line

```sh
127.0.0.1	localhost
```

to

```sh
127.0.0.1	localhost my-minio-server
```