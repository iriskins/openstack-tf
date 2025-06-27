resource openstack_images_image_v2 "cirros" {
    name = "cirros"
    container_format = "bare"
    disk_format = "qcow2"
    image_cache_path = null
    image_id = "c74c8227-d9d6-4598-8fc7-a9d07bc42611"
    protected = false
    region = "RegionOne"
    properties = {
      os_hash_algo = "sha512"
      os_hash_value = "6513f21e44aa3da349f248188a44bc304a3653a04122d8fb4535423c8e1d14cd6a153f735bb0982e2161b5b5186106570c17a9e58b64dd39390617cd5a350f78"
      stores = "fs"
    }
    visibility = "public"
}

resource openstack_images_image_v2 "Fedora-42" {
    name = "Fedora-42-1.1"
    container_format = "bare"
    disk_format = "qcow2"
    image_id = "2b9cc760-3a31-4d57-a9b6-b760131008ab"
    protected = false
    image_cache_path = null
    region = "RegionOne"
    properties = {
      hw_disk_bus = "virtio"
      hw_qemu_guest_agent = "yes"
      os_admin_user = "root"
      os_distro = "fedora"
      os_glance_failed_import = ""
      os_glance_importing_to_stores = ""
      os_hash_algo = "sha512"
      os_hash_value = "3f0a7d3a8a71daec373b3e3052a4c05a31347d0af1b821f0374a236c0a978a9338092c21eb413f308ef0b14d4ac762b4b10de3f93b833c8dfc7fff350c3e80c8"
      os_version = "42-1.1"
      stores = "sw"
      usage_type = "common"
    }
    visibility = "private"
}

resource openstack_images_image_v2 "debian12" {
    name = "debian12"
    container_format = "bare"
    disk_format = "qcow2"
    image_cache_path = null
    image_id = "c373d40d-c641-4ba5-8de9-cc26d12e812d"
    protected = false
    region = "RegionOne"
    properties = {
      hw_qemu_guest_agent = "yes"
      os_admin_user = "root"
      os_distro = "debian"
      os_glance_failed_import = ""
      os_glance_importing_to_stores = ""
      os_hash_algo = "sha512"
      os_hash_value = "00fc1e3c46ae8b418aaa67cab9efcf72b3826847881bac04cc06ab0eeb3f513d58c45c1f2896e71591cc297052a7bc864d35c2808948c49ed2836abba50e1f3a"
      os_version = "12"
      stores = "sw"
      usage_type = "common"
    }
    visibility = "private"
}

resource openstack_images_image_v2 "finnix-250" {
    name = "finnix-250"
    container_format = "bare"
    disk_format = "iso"
    image_id = "68f12161-c1bf-459b-b6c3-81bad363f418"
    protected = false
    image_cache_path = null
    region = "RegionOne"
    properties = {
      hw_qemu_guest_agent = "yes"
      os_admin_user = "root"
      os_distro = "others"
      os_glance_failed_import = ""
      os_glance_importing_to_stores = ""
      os_hash_algo = "sha512"
      os_hash_value = "7c018bd6982ccfff76768a426ecf77c18a3524e2dfe25a4d7fcaec3f50296bba89a078c70b54b2d1acb30798ebc54ed46615315517c608e64e5f2b1c6e90249a"
      os_version = "250"
      stores = "sw"
      usage_type = "common"
    }
    visibility = "public"
}

resource openstack_images_image_v2 "ubuntu-plucky-server" {
    name = "ubuntu-plucky-server"
    container_format = "bare"
    disk_format = "qcow2"
    image_id = "66199df1-d752-466e-9ace-32f8dd79d872"
    protected = false
    region = "RegionOne"
    image_cache_path = null
    properties = {
      hw_qemu_guest_agent = "yes"
      os_admin_user = "root"
      os_distro = "ubuntu"
      os_glance_failed_import = ""
      os_glance_importing_to_stores = ""
      os_hash_algo = "sha512"
      os_hash_value = "224164ad11654a546eaae6c32d616bf530acdb6b6e6c15bd20c26deb07eecf21ce136fcdb0881149c63d19cb6298cd86db2cd85e38ecfe57374e8cb35c4f7849"
      os_version = "25.04"
      stores = "sw"
      usage_type = "common"
    }
    visibility = "private"
}
