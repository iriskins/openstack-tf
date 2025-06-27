resource "openstack_objectstorage_container_v1" "glance" {
  region = "RegionOne"
  name   = "glance"
  container_read = ".r:*,.rlistings"
  storage_policy = "Policy-0"
}

resource "openstack_objectstorage_container_v1" "tf-bucket" {
  region = "RegionOne"
  name   = "tf-bucket"
  storage_policy = "Policy-0"
}