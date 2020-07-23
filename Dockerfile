FROM centos:7
RUN yum install httpd -y

CMD /usr/sbin/httpd -DFOREGROUND
EXPOSE 80
