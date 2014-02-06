class ruby::gems_dependencies {
  # Curb.
  package { 'libcurl4-openssl-dev': }

  # Summarize.
  package { 'libglib2.0-dev': }

  # Nokogiri.
  package { [
    'libxslt-dev',
    'libxml2-dev',
  ]: }

  # MiniMagick.
  package { 'imagemagick': }
}
