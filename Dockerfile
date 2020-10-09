# Container image that runs your code
FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-devel

RUN apt-get update && apt-get install --assume-yes git
RUN apt-get install --assume-yes python3-pip

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
