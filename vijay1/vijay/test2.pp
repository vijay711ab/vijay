file { '/etc/motd':
ensure => 'file',
content => 'welcome to my server',
}

