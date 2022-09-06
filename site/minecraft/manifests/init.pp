class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file{'/opt/minecraft/jdk-17.0.4.1_linux-x64_bin.rpm':
  ensure => file,
  source => 'https://download.oracle.com/java/17/archive/jdk-17.0.4.1_linux-x64_bin.rpm',
  }
  file {'/opt/minecraft/server.jar':
  ensure => file,
  source => 'https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar',
  }
  package {'java':
    ensure => installed,
    source => 'https://download.oracle.com/java/17/archive/jdk-17.0.4.1_linux-x64_bin.rpm',
    provider => 'yum',
  }
  file {'/opt/minecraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }
}
