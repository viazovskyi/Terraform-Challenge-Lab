module "instances" {
  source           = "./modules/instances"
  project_id          = var.project_id
  zone             = var.zone
}

/*
module "storage" {
  source           = "./modules/storage"
  project_id          = var.project_id
  name             = var.bucket
}
*/

/*
module "network" {
  source  = "terraform-google-modules/network/google"
  version = "6.0.0"
  network_name = "tf-vpc-453017"
  routing_mode = "GLOBAL"
  subnets = [
    {
      subnet_name   = "subnet-01"
      subnet_ip     = "10.10.10.0/24"
      subnet_region = "us-east1"
    },
    {
      subnet_name           = "subnet-02"
      subnet_ip             = "10.10.20.0/24"
      subnet_region         = "us-east1"
    }
  ]}
*/

/*
resource "google_compute_firewall" "tf-firewall" {
  name    = "firewall-tcp80-ingress"
  network = "tf-vpc-453017" #google_compute_network.default.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = "0.0.0.0/0"
}
*/

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
/*
  backend "gcs" {
    bucket  = var.bucket
    prefix  = "terraform/state"
  }
*/
}

provider "google" {
  version = "3.5.0"
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
