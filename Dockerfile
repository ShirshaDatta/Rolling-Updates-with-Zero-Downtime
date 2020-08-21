FROM centos:7
RUN yum install httpd -y
COPY index.html /var/www/html/
CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
