define ubuntu::source(
  $service = $title,
  $sources,
  $key_url = false,
  $custom_add_key_command = false
) {
  file { "/etc/apt/sources.list.d/${service}.list":
    content => $sources,
  }

  if $key_url {
    $add_key_command = "wget --quiet -O - ${$key_url} | sudo apt-key add -"
  }
  if $custom_add_key_command {
    $add_key_command = $custom_add_key_command
  }

  exec  { "add ${service} key":
    command => $add_key_command,
    user    => 'root',
    group   => 'root',
    require => File["/etc/apt/sources.list.d/${service}.list"],
  }
}
