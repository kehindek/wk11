# Dockerfile
FROM nginx
LABEL maintainer = "Kenny Kalejaiye Kale5555@stthomas.edu"
EXPOSE 80
COPY /workspace/docker-pipeline/index.html /usr/share/nginx/html
