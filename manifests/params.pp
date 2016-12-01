class nrpe::params {

  $nrpe_conf='/etc/nagios/nrpe.cfg'



  case $::osfamily
  {
    'redhat':
    {
      $service_name='nrpe'
      $include_epel=true
      $package_name='nrpe'
      $plugins_package_name='nagios-plugins-nrpe'
      $nrpe_conf_dir='/etc/nrpe.d'
      $username='nrpe'
      $group='nrpe'

      case $::operatingsystemrelease
      {
        /^[5-7].*$/:
        {
        }
        default: { fail("Unsupported RHEL/CentOS version! - ${::operatingsystemrelease}")  }
      }
    }
    'Debian':
    {
      $service_name='nagios-nrpe-server'
      $include_epel=false
      $package_name='nagios-nrpe-server'
      $plugins_package_name='nagios-plugins-basic'
      $nrpe_conf_dir='/etc/nagios/nrpe.d'
      $username='nagios'
      $group='nagios'

      case $::operatingsystem
      {
        'Ubuntu':
        {
          case $::operatingsystemrelease
          {
            /^14.*$/:
            {
            }
            default: { fail("Unsupported Ubuntu version! - ${::operatingsystemrelease}")  }
          }
        }
        'Debian': { fail('Unsupported')  }
        default: { fail('Unsupported Debian flavour!')  }
      }
    }
    default: { fail('Unsupported OS!')  }
  }
}
