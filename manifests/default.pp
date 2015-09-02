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

  # Replace system php with the brewed one.
  # Creates a fallback symlink at the original location.
  # (Hard-coded scripts might fail)
  exec {'move old php':
    command => '/bin/mv /usr/bin/php /usr/bin/php-orig && /bin/ln -s /usr/local/bin/php /usr/bin/php',
    path => '/usr/bin',
    onlyif => '/bin/test -e /usr/bin/php'
  }
}
