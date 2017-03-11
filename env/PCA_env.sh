#!/bin/bash
BENCHMARK_NAME="PCA"
PACKAGE="skydata.spark.benchmark.supervisal"
CLASS="${PACKAGE}.${BENCHMARK_NAME}Benchmark"
DIR=`dirname "$0"`
DIR=`cd "$DIR"/..; pwd`
DATA_DIR="alluxio://10.0.2.21:19998/spark-benchmark/data/$BENCHMARvK_NAME"
OUTPUT_DIR="${DIR}/result"

#for data generate
NUM_OF_EXAMPLES=200
NUM_OF_FEATURES=30
EPS=0.6
NUM_OF_PARTITIONS=10
INTERCEPT=0.0
DATA_GEN_ARG="${NUM_OF_EXAMPLES} ${NUM_OF_FEATURES} ${EPS} ${NUM_OF_PARTITIONS} ${INTERCEPT}"

# for running
DIMENSIONS=30
ALG_ARG="${DIMENSIONS}"





