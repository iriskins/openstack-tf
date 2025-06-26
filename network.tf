resource "openstack_networking_network_v2" "selfservice" {
  name           = "selfservice"
  admin_state_up = "true"
}

resource "openstack_networking_network_v2" "extern01" {
  name           = "extern01"
  admin_state_up = "true"
  shared         = false
  external       = true
}

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

resource "openstack_networking_router_v2" "router01" {
  name                = "router01"
  admin_state_up      = true
  external_network_id = openstack_networking_network_v2.extern01.id
  distributed         = true
  enable_snat         = true
}

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

resource "openstack_networking_secgroup_v2" "default" {
  name        = "default"
  description = "Default security group"
}

resource "openstack_networking_secgroup_rule_v2" "default_egress_V4" {
  direction         = "egress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.default.id
}

resource "openstack_networking_secgroup_rule_v2" "default_egress_V6" {
  direction         = "egress"
  ethertype         = "IPv6"
  security_group_id = openstack_networking_secgroup_v2.default.id
}

resource "openstack_networking_secgroup_rule_v2" "default_ingress_V4" {
  direction         = "ingress"
  ethertype         = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.default.id
}

resource "openstack_networking_secgroup_rule_v2" "default_ingress_V6" {
  direction = "ingress"
  ethertype = "IPv6"
  region = "RegionOne"
  security_group_id = openstack_networking_secgroup_v2.default.id
  tenant_id = "966caa5f6b664a318fd7ead6280b4d84"
}

resource "openstack_networking_secgroup_v2" "all" {
  name        = "all"
}

resource "openstack_networking_secgroup_rule_v2" "all_ingress_V4" {
  direction = "ingress"
  ethertype = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.all.id
}

resource "openstack_networking_secgroup_rule_v2" "all_egress_V4" {
  direction = "egress"
  ethertype = "IPv4"
  security_group_id = openstack_networking_secgroup_v2.all.id
}

resource "openstack_networking_floatingip_v2" "floatip_1" {
  pool       = openstack_networking_network_v2.extern01.name
  fixed_ip = "192.168.1.66"
  address = "10.1.1.148"
}

resource "openstack_networking_floatingip_v2" "floatip_2" {
  pool       = openstack_networking_network_v2.extern01.name
  address = "10.1.1.105"
}