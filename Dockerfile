FROM ubuntu

LABEL MAINTAINER "Patrick Kane <patrick@patrickkane.xyz>"
LABEL SOURCE "https://github.com/patrickkanexyz/workspace"

ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize && \
  apt-get -y --no-install-recommends upgrade && \
  apt-get install -y \
    apt-utils \
    bc \
    build-essential \
    curl \
    ed \
    git \
    htop \
    less \
    make \
    man-db \
    rsync \
    shellcheck \
    ssh \
    sudo \
    tmux \
    vim \
    w3m \
    && \
  apt-get update -y
