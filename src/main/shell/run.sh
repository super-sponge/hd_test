#!/bin/bash

HADOOP_HOME=/home/sponge/app/hadoop-2.6.0

CLASSPATH=$CLASSPATH:
for i in `find $HADOOP_HOME/share/hadoop -name *.jar` ; do
    CLASSPATH=$CLASSPATH:$i
done
CLASSPATH=$CLASSPATH:/home/sponge/IdeaProjects/hd_test/target/hd_test-1.0-SNAPSHOT.jar

java -cp ${CLASSPATH} -Dhio.nthreads=5 -Dhio.ngigs.to.read=1 -Dhio.ngigs.in.file=1 -Dhio.hdfs.uri=hdfs://localhost:9000 com.asiainfo.srd.HioBench
