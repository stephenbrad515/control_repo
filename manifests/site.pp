node default {
  file { '/root/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
}

node/^web/ {
  include roll::web_server
}

node/^db/ {
  include roll::db_server
}
