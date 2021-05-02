FROM debian:buster

RUN apt-get update \
    && apt-get install nginx -y \
    && rm -rf /var/lib/apt/lists/* 

COPY index.html /var/www/html/
COPY src/ /var/www/html/src
COPY baseparrots/ /var/www/html/baseparrots

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]