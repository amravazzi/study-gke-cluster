locals {
  region               = "us-central1-c"
  org_id               = "652770409937"
  billing_account      = "015C14-181A4D-D47ED0"
  host_project_name    = "host-staging"
  service_project_name = "host-staging"
  host_project_id      = "${local.host_project_name}-${random_integer.int.result}"
  service_project_id   = "${local.service_project_name}-${random_integer.int.result}"
  projects_api         = "container.googleapis.com"
  secondary_ip_ranges = {
    "pod-ip-range"     = "10.0.0.0/14",
    "service-ip-range" = "10.0.0.0/19"
  }
}