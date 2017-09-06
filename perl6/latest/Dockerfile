FROM rakudo-star:latest




ENV RAKUDO_ERROR_COLOR 0
RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
