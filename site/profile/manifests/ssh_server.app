class profile::ssh_server{
        package {'openssh-server':
          ensure => present,
          }
          service {'sshd':
            ensure => 'running',
            enable => 'true',
          }
          ssh_authorized_key {'root@master.puppet.vm':
            ensure => present,
            user => 'root',
            type => 'ssh-rsa',
            key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDnDO5rnrKKJOwSf6qHvcKFDjdTVBf4AUvgUPwINvAbA9mJcu+5UqeTJzWeXP6bnX4D0FAaWc5TwZJHV7W5dDX51pzXqeQw5J8IqFlpy3MzyVaM0mbZ0/jSetfPuUrPae3NHWjiEpNIUDe8IZ/IM4USvjrXKqR34YEIAdCR824+F8zhqa7DuFLVea8yEUpQLOqgI9uis1MhMi67hTQd+2dgeAJVvLnCy2e3nceuwiIkRTOCeNOOHwqYM3PhLW6LHsuaWst7FW1MLu8hs/02C91+MY0iInJsGW89DyDIokxot0b8G2xiy9K1KpiRTVZ5N3pwq7sHj2ibKKkZ9phoV0Tb',
          }
}
