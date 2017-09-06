FROM node:latest

RUN npm install -g typescript



RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
