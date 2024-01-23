FROM centos:latest
run yum install httpd -y
copy index.html /var/www/html/
cmd ["/usr/sbin/httpd", "-D", "foreground"]
expose 80