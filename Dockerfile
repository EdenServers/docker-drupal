FROM phusion/baseimage:0.9.17
MAINTAINER EdenServers

#Install LAMP
RUN apt-get -y update
RUN apt-get -y install apache2 libapache2-mod-php5 php5 php5-mysql \
		       mysql-server wget curl unzip \
		       php5-gd imagemagick

#Delete index.html
RUN rm /var/www/html/*

#Download Drupal
RUN wget "http://drupalfr.org/sites/default/files/drupal-7.latest.tar.gz" && \
	tar -zvxf drupal-7.latest.tar.gz && \
	mv drupal-7.39/* /var/www/html/ && \
	rm -Rf drupal-7.39 é&& \
	rm drupal-7.latest.tar.gz

# Apache CHOWN
RUN chown -R www-data:www-data /var/www/html

#Add configuration scripts
ADD mysql_config.sh /mysql_config.sh
ADD apache_config.sh /apache_config.sh
ADD start.sh /start.sh
RUN chmod 755 /*.sh

#Scp Server
RUN apt-get install -y openssh-server rssh
ADD rssh.conf /etc/rssh.conf

EXPOSE 80
EXPOSE 22

CMD ["/start.sh"]

