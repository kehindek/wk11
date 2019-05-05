# Dockerfile
FROM nginx
RUN apt-get update -y
LABEL maintainer = "Kenny Kalejaiye Kale5555@stthomas.edu"
ENV NGINX_PORT 80
EXPOSE 80
#RUN apt-get install build-essential -y
COPY html/index.html /usr/share/nginx/html
