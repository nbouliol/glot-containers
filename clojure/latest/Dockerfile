FROM clojure:latest


RUN ln -s /usr/share/java/leiningen-*-standalone.jar /usr/share/java/clojure.jar


RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
