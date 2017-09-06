FROM ruby:latest



RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'

COPY ../../key /key
ARG repo

RUN git clone $repo /client

CMD ['/bin/sh -c']
