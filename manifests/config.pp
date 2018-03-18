class ssh::config{
  file {'/etc/ssh/ssh_config':
    ensure  => file,
    mode    => 0600,
    user    => 'root',
    group   => 'root',
    content => 'puppet:///modules/ssh/ssh_config',
  }
}
