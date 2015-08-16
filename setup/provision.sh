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

cat > /var/www/html/wp-config.php <<WP_CONFIG
<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'dbuser');
define('DB_PASSWORD', 'password');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
define('AUTH_KEY',         'YOUR KEY');
define('SECURE_AUTH_KEY',  'YOUR KEY');
define('LOGGED_IN_KEY',    'YOUR KEY');
define('NONCE_KEY',        'YOUR KEY');
define('AUTH_SALT',        'YOUR KEY');
define('SECURE_AUTH_SALT', 'YOUR KEY');
define('LOGGED_IN_SALT',   'YOUR KEY');
define('NONCE_SALT',       'YOUR KEY');
\$table_prefix  = 'wp_';
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');
WP_CONFIG

chown nobody.nogroup /var/www/html/wp-config.php
chmod 0644 /var/www/html/wp-config.php

ln -s /vagrant /var/www/html/wp-content/themes/vagrant

mysql -u root <<WP_SQL
CREATE DATABASE IF NOT EXISTS wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO dbuser@localhost IDENTIFIED BY 'password'
WP_SQL