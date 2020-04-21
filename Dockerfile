
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping

##EXPOSE##
RUN apt-get install -y apache2
EXPOSE 80
ADD pagina /var/www/html
ADD apache.sh var/www/html/
VOLUME ["var/www/html"]
CMD /var/www/html/apache.sh
