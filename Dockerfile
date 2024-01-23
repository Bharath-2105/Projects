FROM centos:latest
RUN  sudo yum install httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "foreground"]
EXPOSE 80
