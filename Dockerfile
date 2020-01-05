FROM centos
MAINTAINER ahmed.elfleh.1@gmail.com

RUN yum update -y && yum install vim wget net-tools epel-release -y && yum update -y && yum install nginx -y

COPY snipe.conf /etc/nginx/conf.d/
COPY cert.pem /etc/nginx/snipe.crt
COPY key.pem /etc/nginx/snipe.key

EXPOSE 80
EXPOSE 443


ENTRYPOINT ["nginx", "-g", "daemon off;"]
