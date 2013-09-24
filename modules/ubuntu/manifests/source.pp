define ubuntu::source(
  $service = $title,
  $sources,
  $add_key_command
) {
  file { "/etc/apt/sources.list.d/${service}.list":
    content => $sources,
  }

  exec  { "add ${service} key":
    command => $add_key_command,
    user    => 'root',
    group   => 'root',
    require => File["/etc/apt/sources.list.d/${service}.list"],
  }
}
