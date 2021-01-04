# Container image that runs your code
# Runtime is about 2GB smaller, but missing some python libs
FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-runtime

# Update and add sudo to allow for in-docker installs
RUN apt-get update && apt-get install -y sudo

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
