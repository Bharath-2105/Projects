FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get install -y apache2 curl
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/klinik.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip klinik.zip
RUN cp -rvf clinic-website-template/* .
RUN rm -rf clinic-website-template klinik.zip
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
EXPOSE 80
