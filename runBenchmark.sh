#!/bin/sh

echo "Getting things ready --------------------------"
wget -c https://github.com/brianfrankcooper/YCSB/releases/download/0.17.0/ycsb-0.17.0.tar.gz && tar -xzf ycsb-0.17.0.tar.gz
cd ycsb-0.17.0
echo "YCSB Loaded --------------------------"

echo "Please enter the Redis host address: "
read redis_host
echo "Redis host is set to $redis_host"


echo "-------------------------- REDIS LOAD BENCHMARK #1 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- REDIS RUN BENCHMARK #1 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15

echo "-------------------------- REDIS LOAD BENCHMARK #2 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- REDIS RUN BENCHMARK #2 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15

echo "-------------------------- REDIS LOAD BENCHMARK #3 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- REDIS RUN BENCHMARK #3 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run redis -s -P workloads/workloada -p "redis.host=$redis_host" -p "redis.port=6379" -p "redis.cluster=true" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15

echo "Getting Mongo ready ..." && sleep 30

echo "-------------------------- MONGO LOAD BENCHMARK #1 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- MONGO RUN BENCHMARK #1 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15

echo "-------------------------- MONGO LOAD BENCHMARK #2 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- MONGO RUN BENCHMARK #2 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15

echo "-------------------------- MONGO LOAD BENCHMARK #3 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 15

echo "-------------------------- MONGO RUN BENCHMARK #3 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run mongodb -s -P workloads/workloada -p recordcount=1000 -p mongodb.upsert=true -p mongodb.url=mongodb://mongo1:30001,mongo2:30002,mongo3:30003,mongo4:30004,mongo5:30005,mongo6:30006/?replicaSet=my-replica-set >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 15



echo "-------------------------- AZURE COSMOS LOAD BENCHMARK #1 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 20

echo "-------------------------- AZURE COSMOS RUN BENCHMARK #1 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 20

echo "-------------------------- AZURE COSMOS LOAD BENCHMARK #2 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 20

echo "-------------------------- AZURE COSMOS RUN BENCHMARK #2 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 20

echo "-------------------------- AZURE COSMOS LOAD BENCHMARK #3 --------------------------" >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
./bin/ycsb.sh load azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputLoad.txt
printf "\n\n" >> OutputLoad.txt
sleep 20

echo "-------------------------- AZURE COSMOS RUN BENCHMARK #3 --------------------------" >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
./bin/ycsb.sh run azurecosmos -P workloads/workloada -p azurecosmos.primaryKey=HkBtZtX7wv9Yw0sdhMWqpQsdvigRAeywG2yEId8sAtavffzqqxvIijxj5FQfrKUae7jEcT8IKuYUACDbGhsRMw== -p azurecosmos.uri=https://thierry-fortin.documents.azure.com:443/ -p azurecosmos.useUpsert=true >> OutputRun.txt
printf "\n\n" >> OutputRun.txt
sleep 20

docker stop `docker ps -qa`
docker rm `docker ps -qa`
docker rmi -f `docker images -qa `
docker volume rm $(docker volume ls -q)

exit
