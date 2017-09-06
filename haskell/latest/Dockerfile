FROM haskell:latest


RUN cabal update && \
    cabal install --global \
        async \
        attoparsec \
        case-insensitive \
        cgi \
        exceptions \
        fgl \
        free \
        hashable \
        haskell-src \
        html \
        HTTP \
        HUnit \
        mtl \
        multipart \
        network \
        network-uri \
        ObjectName \
        old-locale \
        old-time \
        parallel \
        parsec \
        primitive \
        QuickCheck \
        random \
        regex-base \
        regex-compat \
        regex-posix \
        scientific \
        split \
        StateVar \
        stm \
        syb \
        text \
        tf-random \
        transformers \
        transformers-compat \
        unordered-containers \
        vector \
        xhtml \
        zlib


RUN apt-get update && apt-get install git build-essential -y
ENV GIT_SSH_COMMAND='ssh -i /key'
ADD ../../key /key
