﻿resource "google_storage_bucket" "bucket" {
  name               = var.name
  project            = var.project_id
  location = "US"
  force_destroy = true
  uniform_bucket_level_access = true
}