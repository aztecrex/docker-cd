FROM ubuntu:15.10

# environmental interaction layer
RUN  apt-get update \
  && apt-get install -y \
           awscli

# haskell layer
RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442 \
  && echo 'deb http://download.fpcomplete.com/ubuntu wily main' \
           | tee /etc/apt/sources.list.d/fpco.list \
  && apt-get update \
  && apt-get install -y \
           stack

