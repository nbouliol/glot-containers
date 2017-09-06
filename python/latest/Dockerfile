FROM python:latest


RUN pip install \
    cachetools \
    nose \
    numpy \
    python-dateutil \
    pytz \
    six


RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
