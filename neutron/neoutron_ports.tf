resource "openstack_networking_port_v2" "port_01" {
  name               = "port_01"
  network_id         = openstack_networking_network_v2.extern01.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.extern01_subnet.id
    ip_address       = "10.1.1.184"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_02" {
  name               = "port_02"
  network_id         = openstack_networking_network_v2.selfservice.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.selfservice_subnet.id
    ip_address       = "192.168.1.66"
  }
  security_group_ids    = [openstack_networking_secgroup_v2.all.id]
}

resource "openstack_networking_port_v2" "port_03" {
  name               = "port_03"
  network_id         = openstack_networking_network_v2.selfservice.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.selfservice_subnet.id
    ip_address       = "192.168.1.1"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_04" {
  name               = "port_04"
  network_id         = openstack_networking_network_v2.extern01.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.extern01_subnet.id
    ip_address       = "10.1.1.148"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_05" {
  name               = "port_05"
  network_id         = openstack_networking_network_v2.selfservice.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.selfservice_subnet.id
    ip_address       = "192.168.1.2"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_06" {
  name               = "port_06"
  network_id         = openstack_networking_network_v2.extern01.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.extern01_subnet.id
    ip_address       = "10.1.1.141"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_07" {
  name               = "port_07"
  network_id         = openstack_networking_network_v2.extern01.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.extern01_subnet.id
    ip_address       = "10.1.1.105"
  }
  port_security_enabled = false
}

resource "openstack_networking_port_v2" "port_08" {
  name               = "port_08"
  network_id         = openstack_networking_network_v2.selfservice.id
  admin_state_up     = true
  fixed_ip {
    subnet_id        = openstack_networking_subnet_v2.selfservice_subnet.id
    ip_address       = "192.168.1.43"
  }
  port_security_enabled = false
}