FROM node:latest

ENV LANG C.UTF-8


RUN npm install -g elm

RUN mkdir /bootstrap && \
    cd /bootstrap && \
    npm install jsdom && \
    elm-package install -y elm-lang/html && \
    elm-package install -y elm-lang/svg && \
    elm-package install -y evancz/elm-markdown && \
    elm-package install -y elm-community/list-extra && \
    elm-package install -y elm-community/maybe-extra && \
    elm-make



COPY files/app.js /bootstrap/

RUN chown glot:glot -R /bootstrap

RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
