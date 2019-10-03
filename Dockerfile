#FROM ubuntu
#RUN apt-get update && \
    #apt-get install -y wget sudo
#RUN apt-get install -y apt-transport-https
#RUN apt-get install -y ca-certificates wget
FROM ubuntu:16.04

MAINTAINER  laxminarayana

RUN apt-get update \
    && apt-get install -y nginx

ADD default /etc/nginx/sites-available/default

#EXPOSE 80
CMD ["nginx"]
