resource "openstack_compute_flavor_v2" "m1_tiny" {
	name = "m1.tiny"
	ram = 512
	region = "RegionOne"
        flavor_id = "07eb3c72-c8a1-4178-8d71-710157de9409"
	vcpus = 1
	disk = 1
	swap = 0
	is_public = true
}

resource "openstack_compute_flavor_v2" "m2_medium" {
	name = "m2.medium"
	ram = 4096
	region = "RegionOne"
        flavor_id = "24b10941-4bcf-4772-b7cb-2cbb45957c7b"
	vcpus = 2
	disk = 0
	extra_specs = {
	  ":architecture" = "x86_architecture"
	  ":category" = "general_purpose"
	  "hw:mem_page_size" = "any"
	  "hw:numa_nodes" = "1"
	}
	swap = 0
	is_public = true
}

resource "openstack_compute_flavor_v2" "cherry" {
	name = "cherry"
	ram = 4096
	region = "RegionOne"
        flavor_id = "a9213ea0-b33e-454c-9157-612d194fae50"
	extra_specs = {
	  ":architecture" = "x86_architecture"
	  ":category" = "compute_optimized"
	  "disk" = "1"
	  "hw:mem_page_size" = "any"
	  "hw:numa_nodes" = "1"
	}
	vcpus = 2
	disk = 0
	swap = 0
	is_public = true
}
