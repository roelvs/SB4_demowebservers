# install apache2 package

include apache
apache::vhost {'site1':
	port => 8000,
	docroot => '/var/www/personal'
	}
	
firewall { '100 allow apache on port 8000': 
    port   => [8000],
    proto  => tcp,
    action => accept,
  }


