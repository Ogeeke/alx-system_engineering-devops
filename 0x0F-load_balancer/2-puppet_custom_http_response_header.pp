# Creates new server with nginx and adds a custom http header

exec { 'update system':
        command => '/usr/bin/apt-get update',
}

package { 'nginx':
	ensure => 'installed',
	require => Exec['update system']
}

exec {'HTTP header':
	command => 'sed -i "42i\	add_header X-Served-By $(hostname);" /etc/nginx/sites-available/default',
	provider => 'shell'
}

service {'nginx':
	ensure => running,
	require => Package['nginx']
}
