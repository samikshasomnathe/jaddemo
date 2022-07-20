FROM centos:7
RUN yum install httpd -y
RUN yum install zip -y
RUN yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/cs.zip /var/www/html
WORKDIR /var/www/html
RUN unzip cs.zip
CMD [“/use/sbin/httpd”, “–DFOREGROUND”]
EXPOSE 80
