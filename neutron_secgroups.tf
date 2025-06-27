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