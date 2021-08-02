FROM ubuntu

LABEL MAINTAINER "Patrick Kane <patrick@patrickkane.xyz>"
LABEL SOURCE "https://github.com/patrickkanexyz/workspace"

ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize && \
  apt-get -y --no-install-recommends upgrade && \
  apt-get install -y \
    apt-utils \
    build-essential \
    man-db \
    curl \
    vim \
    tmux \
    git \
    sudo \
    w3m \
    shellcheck \
    ed \
    bc \
    htop \
    ssh \
    rsync \
    make \
    less \
    && \
  apt-get update -y
