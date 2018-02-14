# Version: 0.0.3
FROM ubuntu:16.04
MAINTAINER Paris Messios "pmessios@dundee.ac.uk"
RUN apt-get update
RUN apt-get install -y nginx
COPY nginx.conf /etc/nginx
RUN mkdir -p /data
CMD service nginx start && tail -F /var/log/nginx/error-streaming.log
EXPOSE 80