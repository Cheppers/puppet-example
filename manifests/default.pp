node default {
  include homebrew

  package { 'freetype':
    provider => brew,
    ensure => present
  }

  package { 'libpng':
    provider => brew,
    ensure => present
  }

  package { 'jpeg':
    provider => brew,
    ensure => present
  }

  package { 'gd':
    provider => brew,
    ensure => present
  }

  package { 'zlib':
    provider => brew,
    ensure => present
  }

  package { 'openssl':
    provider => brew,
    ensure => present
  }

  package { 'php56':
    provider => brew,
    ensure => present
  }

  package {'homebrew/dupes':
    ensure   => present,
    provider => tap,
  }

  package {'josegonzalez/homebrew-php':
    ensure   => present,
    provider => tap,
  }

  file { '/tmp/puppet-example':
    ensure => "present",
    mode => "664",
    content => "Test file content.",
  }

  exec {'move old php':
    command => '/bin/mv /usr/bin/php /usr/bin/php-orig',
    path => '/usr/bin',
    onlyif => '/bin/test -e /usr/bin/php'
  }
}
