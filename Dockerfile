# Dockerfile
FROM nginx
RUN apt-get update -y
LABEL maintainer = "Kenny Kalejaiye Kale5555@stthomas.edu"
ENV NGINX_PORT 80
EXPOSE 80
