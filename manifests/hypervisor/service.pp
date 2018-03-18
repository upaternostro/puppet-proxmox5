# == Class: proxmox5::hypervisor::service
#
# Manage Proxmox services
#
class proxmox5::hypervisor::service {

  if $proxmox5::hypervisor::pveproxy_service_enabled == true {
    $pveproxy_service_ensure = 'running'
  } else {
    $pveproxy_service_ensure = 'stopped'
  }

  if $::is_proxmox == 'true' {

    if $proxmox5::hypervisor::pveproxy_service_manage == true {
      service { $proxmox5::hypervisor::pveproxy_service_name:
        ensure     => $pveproxy_service_ensure,
        enable     => $proxmox5::hypervisor::pveproxy_service_enabled,
        hasstatus  => false,
        hasrestart => true,
      }
    }

  }

} # Private class: proxmox5::hypervisor::service
