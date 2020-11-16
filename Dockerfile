# Container image that runs your code
FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

RUN apt-get update && apt-get install -y python3-pip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
