from ubuntu:24.04

env debian_frontend = nointeractive

run apt-get update && apt-get -y install nginx

copy ./app /var/www/HTML

expose 8080

cmd ["nginx","-g","daemon off;"]
