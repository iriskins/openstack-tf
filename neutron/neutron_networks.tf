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