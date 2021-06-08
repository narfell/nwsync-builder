FROM ubuntu:20.04

ARG NWSYNC_VERSION
ENV DOWNLOAD="nwsync.linux.amd64"

RUN echo $NWSYNC_VERSION $DOWNLOAD \
  && apt-get update && apt-get -y install curl unzip \
  && curl -LJO "https://github.com/Beamdog/nwsync/releases/download/$NWSYNC_VERSION/$DOWNLOAD.zip" \
  && unzip "$DOWNLOAD.zip" \
  && rm "$DOWNLOAD.zip" \
  && mv nwsync_* /usr/local/bin
