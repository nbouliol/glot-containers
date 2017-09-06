FROM steinwaywhw/ats:latest




ENV CLASSPATH=${HOME}/clojure-1.8.0/*:${CLASSPATH}:
ENV ATSHOME=/tmp/ats-lang-anairiats-0.2.12
ENV ATSHOMERELOC=ATS-0.2.12
ENV PATSHOME=/tmp/ATS2
ENV PATSHOMERELOC=/tmp/ATS2-contrib
ENV PATSHOME_contrib=/tmp/ATS2-contrib
ENV PATH=${PATSHOME}/bin:${PATH}
RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
