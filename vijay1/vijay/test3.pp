file { 'message file':
ensure => 'file',
content => 'welcome to my server',
path => '/etc/motd',

}

