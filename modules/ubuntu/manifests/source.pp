define ubuntu::source(
  $service = $title,
  $sources,
  $key_url = false,
  $custom_add_key_command = false,
  $creates,
) {
  file { "/etc/apt/sources.list.d/${service}.list":
    content => $sources,
    owner   => 'root',
    group   => 'root',
  }

  if $key_url {
    $add_key_command = "wget --quiet -O - ${$key_url} | sudo apt-key add -"
  }
  elsif $custom_add_key_command {
    $add_key_command = $custom_add_key_command
  }

  exec { "add ${service} key":
    command => "$add_key_command && apt-get --yes update",
    user    => 'root',
    group   => 'root',
    require => File["/etc/apt/sources.list.d/${service}.list"],
    creates => $creates,
  }
}
