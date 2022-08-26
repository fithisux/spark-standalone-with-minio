
# General

This is an educational standalone Spark Cluster that uses mino for S3

It improves upon [Spark Cluster with Docker](https://github.com/mvillarrealb/docker-spark-cluster) with significant updates and enhancements for MinIO

You can always use information here [Minio in docker cluster is not reachable from spark container](https://stackoverflow.com/questions/72260705/minio-in-docker-cluster-is-not-reachable-from-spark-container) to spin one without the code here.

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
