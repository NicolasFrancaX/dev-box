class archlinux::keyboard {
  file { "remap <Caps Lock> to <Esc>":
    path    => "$home/.Xmodmap",
    content => "clear Lock\nkeycode 0x42 = Escape",
  }
}
