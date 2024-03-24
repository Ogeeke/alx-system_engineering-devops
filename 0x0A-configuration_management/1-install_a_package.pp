# install puppet-lint -v 2.5.0

exec { 'puppet-lint':
  command => '/usr/bin/pip install Flask==2.1.0',
}
