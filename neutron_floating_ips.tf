resource "openstack_networking_floatingip_v2" "floatip_1" {
  pool       = openstack_networking_network_v2.extern01.name
  address = "10.1.1.148"
}

resource "openstack_networking_floatingip_v2" "floatip_2" {
  pool       = openstack_networking_network_v2.extern01.name
  address = "10.1.1.105"
}

resource "openstack_networking_floatingip_v2" "floatip_3" {
  pool       = openstack_networking_network_v2.extern01.name
  address = "10.1.1.100"
}

resource "openstack_networking_floatingip_associate_v2" "fip_gitea_instance" {
  floating_ip = openstack_networking_floatingip_v2.floatip_3.address
  port_id     = data.openstack_networking_port_v2.gitea_instance_port.id
  depends_on  = [openstack_networking_floatingip_v2.floatip_3, data.openstack_networking_port_v2.gitea_instance_port]
}

resource "openstack_networking_floatingip_associate_v2" "fip_post_instance" {
  floating_ip = openstack_networking_floatingip_v2.floatip_2.address
  port_id     = data.openstack_networking_port_v2.postgresql01_instance_port.id
  depends_on  = [openstack_networking_floatingip_v2.floatip_2, data.openstack_networking_port_v2.postgresql01_instance_port]
}