terraform {
    required_version = ">=1.12.1"
    required_providers {
        openstack = {
            source = "terraform-provider-openstack/openstack"
            version = ">=3.2.0"
        }
    }
    backend "s3" {
        bucket = "tf-bucket"
        key = "terraform.tfstate"
        endpoints = {
            s3 = "http://10.1.1.3:8080"
        }
        region = "us-east-1"
        force_path_style = true
        skip_credentials_validation = true
        insecure = true
        skip_requesting_account_id = true
    }
}

provider "openstack" {
  user_name   = "admin"
  tenant_name = "admin"
  auth_url    = "http://10.1.1.3:5000/v3"
  region      = "RegionOne"
}