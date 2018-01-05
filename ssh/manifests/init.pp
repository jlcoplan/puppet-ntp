# Manage ssh client and server
#
class ssh(
  String $package_name,
  String $service_name,
  String $ensure,
  String $service_ensure,
  Boolean $service_enable,
  Boolean $permit_root_login = false,
  Integer $port              = 22,
) {

    notify { "test top scope var in module": 
      message => "test top scope ${::test_top_scope}"
}
    class { '::ssh::service': }
    class { '::ssh::config':  }
    class { '::ssh::install':  }
 
 Class['::ssh::install']
   -> Class['::ssh::config']
}
      

