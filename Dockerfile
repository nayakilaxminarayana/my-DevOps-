#FROM ubuntu
#RUN apt-get update && \
    #apt-get install -y wget sudo
#RUN apt-get install -y apt-transport-https
#RUN apt-get install -y ca-certificates wget
#FROM ubuntu:16.04

#MAINTAINER  laxminarayana

#RUN apt-get update \
    #&& apt-get install -y nginx

#ADD default /etc/nginx/sites-available/default

#EXPOSE 80
#CMD ["nginx"]
FROM ubuntu:16.04

MAINTAINER  laxminarayana

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

#ADD default /etc/nginx/sites-available/default

EXPOSE 80
CMD ["nginx"]
