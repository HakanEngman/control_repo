node default {
}
$str = "$fqdn $kernel $networking.dhcp"

node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
     ensure => file,
     content => $str
     }
  }

node /^web/ { 
   include role::app_server
   }
   
node /^db/ { 
   include role::db_server
   }
   
node /^mine/ { 
   include role::minecraft
   include role::base
   }

