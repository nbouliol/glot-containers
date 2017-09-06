FROM supermina999/alpine-kotlin:latest

RUN addgroup glot
RUN adduser -h /home/glot -D -G glot -s /bin/bash glot


RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
