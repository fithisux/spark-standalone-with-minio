#!/bin/bash

export HADOOP_HOME=/opt/spark
export SPARK_HOME=/opt/spark
export PATH=$SPARK_HOME/bin:$HADOOP_HOME/bin:$PATH
export HADOOP_OPTIONAL_TOOLS="hadoop-aws"
export SPARK_DIST_CLASSPATH=$(hadoop classpath)

echo "$SPARK_WORKLOAD"

if [ "$SPARK_WORKLOAD" == "master" ];
then

    /opt/spark/bin/spark-class org.apache.spark.deploy.master.Master

elif [ "$SPARK_WORKLOAD" == "worker" ];
then

    /opt/spark/bin/spark-class org.apache.spark.deploy.worker.Worker $SPARK_MASTER

else
    echo "Undefined Workload Type $SPARK_WORKLOAD, must specify: master, worker, submit"
fi

