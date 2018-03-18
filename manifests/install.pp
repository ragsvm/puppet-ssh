class ssh::install (
  $package_name = $::ssh::params::package_name
  ){
  package {'ssh-package':
    ensure => present,
    name   => $package_name,
  }
}
 
