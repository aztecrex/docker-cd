FROM aztecrex/ci-base
# Base leaves updated apt sources available

MAINTAINER Greg Wiley <aztec.rex@jammm.com>

# haskell layer
RUN  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 575159689BEFB442 \
  && echo 'deb http://download.fpcomplete.com/ubuntu wily main' \
           | tee /etc/apt/sources.list.d/fpco.list \
  && apt-get update \
           --no-install-recommends \
           -qq \
           -o Dir::Etc::sourcelist="sources.list.d/fpco.list" \
           -o Dir::Etc::sourceparts="-" \
           -o APT::Get::List-Cleanup="0" \
  && apt-get install -y \
           stack

# build setup
COPY build-haskell.sh /
RUN  chmod +x /build-haskell.sh \
  && mkdir -p /build
VOLUME /build
ENV BUILD_DIR=/build

# let's go
ENTRYPOINT ["/build-haskell.sh"]
CMD ["publish"]
