# install apache2 package

###include apache

class{'apache':
	mpm_module => 'worker',
}

apache::vhost {'site1':
	port => 8000,
	docroot => '/var/www/html/',

}
	
firewall { '100 allow apache on port 8000': 
    port   => [8000],
    proto  => tcp,
    action => accept,
}


