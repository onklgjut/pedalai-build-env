# Pedalai build environment

Some instruction to initialize dev environment

1. build docker image run
 docker-compose build
Or pull from docker hub
 docker pull mrwqzhmnuhcsio/pedalai-build-env

2. run docker container
 docker-compose up -d

3. build using container
docker-compose exec build-env make -C /src/analog-processor/build/ clean


## Docker Hub
link: https://hub.docker.com/r/mrwqzhmnuhcsio/pedalai-build-env
