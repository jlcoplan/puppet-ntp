class vagrant_passwd {
user { 'vagrant_user': 
  name       => 'vagrant',
  groups     => 'wheel',
  managehome => 'true',
  password   => '$1$jcSpiOQI$Xb6wFhhbEf2R2EyE58rSo', 
  ensure     => present
  }
}
