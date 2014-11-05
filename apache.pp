# install apache2 package

include apache
apache::vhost {'site1':
	port => 8000,
	docroot => '/var/www/personal'
	}

