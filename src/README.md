hio\_bench
======================
This tests random and sequence HDFS I/O.

Building
-------------------------------------------------------------
In order to build and run this test, you must put the HDFS and Hadoop-common
jar files into your classpath.  In the Hadoop install, these are found under
share/hadoop/common/ share/hadoop/hdfs/

TODO: use maven.

Running
-------------------------------------------------------------
You have to set some Java system properties when running the test.

It's also important to make sure libhadoop.so is in your LD\_LIBRARY\_PATH;
otherwise, you won't get features like short-circuit local reads which are
important for performance.

Alternately, you can directly run the jar with:

    java -Dhio.nthreads=5 -Dhio.ngigs.to.read=1 -Dhio.ngigs.in.file=1 -Dhio.hdfs.uri=hdfs://localhost:9000 com.asiainfo.srd.HioBench

Contact information
-------------------------------------------------------------
liuhb <super_sponge@163.com>