class ubuntu::zprofile {
  file { "$home/.zprofile":
    target => "$modulepath/ubuntu/files/zprofile",
  }
}
