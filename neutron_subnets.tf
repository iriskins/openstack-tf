resource "openstack_networking_subnet_v2" "selfservice_subnet" {
  name            = "selfservice_subnet"
  network_id      = openstack_networking_network_v2.selfservice.id
  cidr            = "192.168.1.0/24"
  allocation_pool {
    start         = "192.168.1.2"
    end           = "192.168.1.254"
  }
  ip_version      = 4
  enable_dhcp     = true
  dns_nameservers = ["8.8.8.8"]
  gateway_ip      = "192.168.1.1"
}

resource "openstack_networking_subnet_v2" "extern01_subnet" {
  name            = "extern01_subnet"
  network_id      = openstack_networking_network_v2.extern01.id
  cidr            = "10.1.1.0/24"
  allocation_pool {
    start         = "10.1.1.100"
    end           = "10.1.1.200"
  }
  ip_version      = 4
  enable_dhcp     = false
  gateway_ip      = "10.1.1.1"
}