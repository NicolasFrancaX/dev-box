class zsh {
  class { 'oh_my_zsh': }

  exec { "change default shell for $user to zsh":
    command => "chsh -s /bin/zsh $user",
    unless  => 'echo "$SHELL" | grep -q "zsh"',
    user    => 'root',
    group   => 'root',
  }
}
