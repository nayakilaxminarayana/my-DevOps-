FROM ubuntu
RUN apt-get update && \
    apt-get install -y wget sudo
RUN apt-get install -y apt-transport-https
RUN apt-get install -y ca-certificates wget
