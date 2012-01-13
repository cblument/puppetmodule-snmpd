class snmpd {

  package { 'snmpd': ensure => installed }

  service { 'snmpd':
    enable => true,
    ensure => running,
    hasstatus => false
  }

}
