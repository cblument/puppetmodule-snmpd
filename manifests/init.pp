class snmpd {

  package { 'snmpd': ensure => installed }

  service { 'snmpd':
    ensure    => running,
    enable    => true,
    hasstatus => false
  }

}
