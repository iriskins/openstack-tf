resource "openstack_compute_instance_v2" "tvm01_iriskin_edu" {
  region = "RegionOne"
  name            = "gitea.iriskin.edu"
  image_id        = openstack_images_image_v2.Fedora-42.image_id
  flavor_id       = openstack_compute_flavor_v2.cherry.flavor_id
  security_groups = [openstack_networking_secgroup_v2.all.name]
  availability_zone = "nova"
  network {
    access_network = false
    fixed_ip_v4 = "192.168.1.66"
    name = openstack_networking_network_v2.selfservice.name
  }
  power_state = "active"
  hypervisor_hostname = "cc01.iriskin.edu"
}
