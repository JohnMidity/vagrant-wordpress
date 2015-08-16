<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'dbuser');
define('DB_PASSWORD', 'password');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
define('AUTH_KEY',         '$yU4Egm0NT+x@;|;5noHxnMjEd.ki0GN<%S`ECo-;$/y4g }0:wQ3(~qz|s)k{pm');
define('SECURE_AUTH_KEY',  '-4g|-p!L#n1VpDxKQ@jJvzDum$Fb$nN4*!~E&hoUmC;M><Rt-cT?gI:V99K-0=oe');
define('LOGGED_IN_KEY',    'Q1o:inUu}cR&+Et&oQh*GOM5{~.*p4bGIvA|b<dP8 j#4UYg5qFxYVn5f%v]BGt+');
define('NONCE_KEY',        'w+ &feFX2t-aqNC}/{E5c*0<pUx!,}KkW<adt^Tbc01Y6noaYV@ztY<*P.)+jQc:');
define('AUTH_SALT',        '|#O*-!i:-A|R*(ny YdEHxEiz0(PLdaPiL2);Yc9GNb3PmTk|j/jffBF5FY~#hU@');
define('SECURE_AUTH_SALT', 'UMKWZT%G13{)6x8`AoH+F/;n=(F=oD)>?2e5i V9&J)q4[U,/~S+o6ECY<NgApJH');
define('LOGGED_IN_SALT',   'Y#}1D#5*]=P|X|d3-4w}>Xa8WaNLtge|r-&h<f1RI1=Y1c#dpW| 76~KC.31+!%h');
define('NONCE_SALT',       'ugtXHF.+9z[3hOdKU?qOr6fh)t*e;hHDZ^,BH}4[?0}-o6X^D`Bi-T}ZlcB~3}9X');
$table_prefix  = 'wp_';
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

require_once(ABSPATH . 'wp-settings.php');