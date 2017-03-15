#must be set
SPARK_HOME=/home/skydiscovery/spark-2.1.0-bin-hadoop2.7
SPARK_MASTER="spark://10.0.2.21:7077"

#optional
ALLUXIO_HOME="/home/skydiscovery/alluxio-1.3.0"
HADOOP_HOME="/home/skydiscovery/hadoop-2.7.3"


#optional:path configuration
DATA_DIR="hdfs://sd002021.skydata.com:9000/spark-benchmark/data"
#GEN_DATA=
#OUTPUT_DIR

#optional:report config
#BENCHMARK_NAME                     #e.g "temp"
#TIME_FORMAT                        #e.g "s" or "ms" or "min
#LOAD_PATTERN=                      #e.g "count" or "no"
#BLAS=                              #e.g "NATIVE" or "F2J"

# Optional
# Spark config in environment variable or aruments of spark-submit 
# - SPARK_SERIALIZER, --conf spark.serializer
# - SPARK_RDD_COMPRESS, --conf spark.rdd.compress
# - SPARK_IO_COMPRESSION_CODEC, --conf spark.io.compression.codec
# - SPARK_DEFAULT_PARALLELISM, --conf spark.default.parallelism

#SPARK_SERIALIZER                   #e.g org.apache.spark.serializer.KryoSerializer
#SPARK_RDD_COMPRESS                 #e.g false
#SPARK_IO_COMPRESSION_CODEC         #e.g lzf

# Spark options in system.property or arguments of spark-submit 
# - SPARK_EXECUTOR_MEMORY, --conf spark.executor.memory
# - SPARK_STORAGE_MEMORYFRACTION, --conf spark.storage.memoryfraction
#SPARK_STORAGE_MEMORYFRACTION       #e.g 0.5
#SPARK_EXECUTOR_MEMORY              #e.g 5g

# Spark options in YARN client mode
# - SPARK_DRIVER_MEMORY, --driver-memory
# - SPARK_EXECUTOR_INSTANCES, --num-executors
# - SPARK_EXECUTOR_CORES, --executor-cores
# - SPARK_DRIVER_MEMORY, --driver-memory
#export EXECUTOR_GLOBAL_MEM         #e.g 6g
#export executor_cores              #e.g 1

# Storage levels, see http://spark.apache.org/docs/latest/api/java/org/apache/spark/api/java/StorageLevels.html
# - STORAGE_LEVEL, set MEMORY_AND_DISK, MEMORY_AND_DISK_SER, MEMORY_ONLY, MEMORY_ONLY_SER, or DISK_ONLY
#STORAGE_LEVEL                      #e.g MEMORY_AND_DISK

# for data generation
#NUM_OF_PARTITIONS                  #e.g 10
#SPARK_EXECUTOR_MEMORY              #e.g 20G


#EVENT_LOG_DIR_ON_HDFS              #e.g "/spark/event"
#EVENT_LOG_BACKUP_DIR_ON_HDFS       #e.g "/spark/backup/event"
#REPORT_DIR_ON_HDFS                 #e.g "/SparkBenchMark/report"
#EVENT_LOG_LOCAL_DIR_TMP            #e.g "/disk/sata/sdi/skydiscovery/spark/event/tmp"



