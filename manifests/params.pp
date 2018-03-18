class ssh::params {
  if $facts['os']['family'] == 'Debian' {
       $package_name = 'openssh-server'
       $service_name = 'ssh'
     } 
  elsif $facts['os']['family'] == 'Redhat' or $facts['os']['family'] == 'CentOS' {
       $package_name = 'openssh-server'
       $service_name = 'sshd'   } 

  else {
    fail("${facts['operatingsystem']} is not supported")
  }  
}
