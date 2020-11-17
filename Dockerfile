# Container image that runs your code
# Runtime is about 2GB smaller, but missing lots of python libs
#FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime
FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-devel

# Need to install pip3 to test requirements
RUN apt-get update && apt-get install -y python3-pip libsndfile1-dev sudo

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
