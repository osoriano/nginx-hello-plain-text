#
# Create an nginx image with a simple response containing:
# - Server address
# - Server name
# - Date
# - URI
# - Request ID
# - Version
#
# Based on:
# https://github.com/nginxinc/NGINX-Demos/blob/master/nginx-hello/DockerfilePlainText
#
FROM nginx:mainline-alpine
ARG VERSION=1.0.0
RUN rm /etc/nginx/conf.d/*
ADD hello-plain-text.conf /etc/nginx/conf.d/
RUN sed "s/__VERSION__/${VERSION}/g" -i /etc/nginx/conf.d/hello-plain-text.conf
