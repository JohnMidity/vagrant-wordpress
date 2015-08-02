#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get upgrade -y
apt-get autoremove -y
apt-get install -y apache2 apache2-utils nano git unzip
apt-get install -y php5 php-pear libapache2-mod-php5 php5-dev php5-gd libssh2-php php5-mcrypt dbconfig-common
apt-get install -y mysql-server php5-mysql
apt-get install -y phpmyadmin

rm -rf /var/www/html

cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
mv wordpress /var/www/html
cp /vagrant/setup/wp-config.php /var/www/html/wp-config.php

rsync -va /var/www/html/wp-content/uploads/ /vagrant/media/
if [ -d /var/www/html/wp-content/uploads ]; then
	rm -rf /var/www/html/wp-content/uploads
fi
ln -s /vagrant/media /var/www/html/wp-content/uploads

rsync -va /var/www/html/wp-content/themes/ /vagrant/themes/
if [ -d /var/www/html/wp-content/themes ]; then
	rm -rf /var/www/html/wp-content/themes
fi
ln -s /vagrant/themes /var/www/html/wp-content/themes

mysql -u root < /vagrant/setup/provision.sql