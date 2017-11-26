 $ntp_conf = '#Manged by puppet server 192.168.0.3 driftfile /var/lib/ntp/drift'

file {  '/etc/ntp.conf':

ensure => 'file',
content => $ntp_conf,

 }
