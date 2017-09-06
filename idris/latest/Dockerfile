FROM haskell:latest

RUN apt-get update
RUN apt-get install -y --no-install-recommends libgmp-dev llvm-dev libghc-terminfo-dev pkg-config libgc-dev build-essential

RUN cabal update && \
    cabal install --global idris



RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
