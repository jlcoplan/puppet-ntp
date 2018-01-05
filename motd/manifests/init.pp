class motd {

        $hostname     = $facts['networking']['fqdn']
	$os_name      = $facts['os']['name']
	$os_release   = $facts['os']['release']
	$fqdn	      = $facts['fqdn'] 	
} 


if $hostname == 'centos7.localdomain' {
  
  file { '/etc/motd':
  path    => '/etc/motd',
  ensure  => file,
  content => "\n\n[Puppet Master] ${hostname} ${os_name} ${os_release}\n\n",
  }
}


elsif $facts['networking']['domain'] == 'centos7.localdomain' {
  file { '/etc/motd':
  path    => '/etc/motd',
  ensure  => file,
  content => "\n\n[Puppet Node] ${hostname} ${os_name} ${os_release}\n\n",
  }
}
