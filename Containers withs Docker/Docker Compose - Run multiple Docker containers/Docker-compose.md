# commands

# create docker network
docker network create mongo-network

## start mongo-db
docker run -d \
-p 27017:27017 \
--net mongo-network \
--name mongo-db \
-e MONGO_INITDB_ROOT_USERNAME=admin \
-e MONGO_INITDB_ROOT_PASSWORD=password \
mongo

## start mongo-express
docker run -d \
-p 8081:8081 \
--net mongo-network \
--name mongo-express \
-e ME_CONFIG_MONGODB_SERVER=mongo-db \
-e ME_CONFIG_MONGODB_ADMINUSERNAME=admin \
-e ME_CONFIG_MONGODB_ADMINPASSWORD=password \
mongo-express