class ssh::service(
  $service_name = $::ssh::params::service_name
  ) {
  service { 'ssh-service':
    ensure => running,
    enable => true,
    name   => $service_name,
  }
}
