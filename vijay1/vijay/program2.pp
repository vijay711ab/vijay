case $facts['os']['family'] {
  'RedHat': {
    $http_service = 'httpd'
  }
  'Debian': {
    $ntp_service = 'ntp'
  }
  default : {
    fail("Your ${facts['os']['family']} is not supported")
  }
}


File {
  owner  => 'root',
  mode   => '0664',
  ensure => 'file',
}

$index_html = 'welcome to vodafone'
file {  '/var/www/index.html:
ensure => 'file',
content => $index_html,
notify => Service['HTTP_Service'],
 }

service {'HTTP_Service':
  ensure    => 'running',
  enable    => true,
  name      => $http_service,
  subscribe => File['/var/www/index.html'],
}
