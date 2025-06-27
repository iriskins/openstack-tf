resource "openstack_compute_instance_v2" "gitea_instance" {
  region = "RegionOne"
  name            = "gitea.iriskin.edu"
  image_id        = openstack_images_image_v2.ubuntu-plucky-server.image_id
  flavor_id       = openstack_compute_flavor_v2.cherry.flavor_id
  security_groups = [openstack_networking_secgroup_v2.all.name]
  availability_zone = "nova"
  key_pair = openstack_compute_keypair_v2.Ilya_Benarit.name
  network {
    name = openstack_networking_network_v2.selfservice.name
  }
  user_data = "#cloud-config\nhostname: gitea.iriskin.edu\nfqdn: gitea.iriskin.edu\npackage_upgrade: true\npackages:\n  - vim"
  power_state = "active"
  hypervisor_hostname = "cc01.iriskin.edu"
}