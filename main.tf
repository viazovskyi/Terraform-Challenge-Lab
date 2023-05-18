module "instances" {
  source           = "./modules/instances"
  project_id          = var.project_id
  zone             = var.zone
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
