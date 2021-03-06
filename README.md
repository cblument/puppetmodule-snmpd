# snmpd module for Puppet

## Description
A quick module for managing snmpd.  Right now it has only been tested on Debian
Squeeze.  None of the configuration files are managed with this module

## Usage
Clone this repository into your puppet modules directory and make sure the
directory is named snmpd.  Make a configuration file in your files or template
directory.  Then in another manifest include this module and make a file block
to manage the file.

Example:

<pre>
class foo {
  include snmpd
  file { '/etc/snmp/snmpd.conf':
    mode   => 600,
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///snmpd.conf',
    require => Package['snmpd'],
    notify  => Service['snmpd']
  }
}
</pre>
