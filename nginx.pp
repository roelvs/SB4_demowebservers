# install apache2 package

include nginx
include firewall

nginx::resource::vhost { 'localhost':
  www_root => '/var/www/html/www.standaard.be/',
  listen_port => '9000',

}



firewall { '100 allow nginx on port 9000': 
    port   => [9000],
    proto  => tcp,
    action => accept,
  }

