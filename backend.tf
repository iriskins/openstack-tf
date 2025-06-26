terraform {
    required_version = ">=1.12.1"
    required_providers {
        openstack = {
            source = "terraform-provider-openstack/openstack"
            version = ">=3.2.0"
        }
    }
    backend "s3" {
        region = "ru-region-one"
        access_key = "~/.aws/credentials"
        secret_key = "~/.aws/credentials"
        bucket = "tf-bucket"
        key = "terraform/state"
    }
}

provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  auth_url    = "http://10.1.1.3:5000/v3"
  region      = "RegionOne"
}