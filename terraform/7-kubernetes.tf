resource "google_service_account" "k8s-staging" {
  project = local.service_project_id
  account_id = "k8s-staging"

  depends_on = [google_project.k8s-staging]
}