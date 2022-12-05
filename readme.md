# Benchmark Script

To run this script run the following command: ./start.sh

## Context

This script was run on Ubuntu Server 22.04 LTS (HVM) on AWS.
Architecture: 64-bit (x86)
Storage: 20gb.

## Requierements

Docker, Java, Maven must be install

## Description

The script will launch the Redis and Mongo Docker containers then it will extract the Yahoo Cloud Service Benchmark in the directory ycsb-0.17.0.
Then, it will launch the benchmark for Redis, Mondo and Azure Cosmos. The output results will be in the OutputLoad.txt and OutputRun.txt within the ycsb-0.17.0 directory.
