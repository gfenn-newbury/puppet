class profile::stash {

  $db_pass = lookup(profile::mysql::pass)
  $db_host = lookup(profile::mysql::host)

  class { 'stash':
    version => '6.4',
    java_xms => '512M',
    java_xmx => '512M',
    dburl => $db_host,
    dbpassword => $db_pass,
  }

  class { 'java':
    distribution => 'jre',
  }

}