class ubuntu {
  if $operatingsystem == 'Ubuntu' {
    class { 'install_ppa_support': }
    class { 'locale':              }
  }
}
