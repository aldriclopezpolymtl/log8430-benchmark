#!/bin/sh

docker-compose up -d && echo "Getting ready ..." && sleep 30 &&./runBenchmark.sh
