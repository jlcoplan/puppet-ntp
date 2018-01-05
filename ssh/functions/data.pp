function ssh::data {}
  $base_params = {
   'ssh::encure' => 'present',
   'ssh::service_enable' => true,
   'ssh::service_ensure' => 'started',
}

    case $facts['os']['family'] {
      'Suse': {   
         $os_params = {
           'ssh::package_name' => 'openssh',
           'ssh::service_name' => 'sshd',
       }
      }
      'Centos': {   
         $os_params = {
           'ssh::package_name' => 'openssh',
           'ssh::service_name' => 'sshd',
       }
      }	
       default: {
         fail("${facts['operatingsystem']} os is not supported!")
       }
     }
   $base_params + $os_params
  
