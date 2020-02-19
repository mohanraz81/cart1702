#This is dockerfiel for cart frontend
FROM centos:7
MAINTAINER mohanraz@gmail.com
# update all exiting packages
RUN yum -y update
# Install apache php php-gd php-mysql
RUN yum -y install httpd php php-gd php-mysql
# Copy the code
ADD code /var/www/html
#Enviroinment Variable
ENV mydbserver=test
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]