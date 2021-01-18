
resource "google_project_iam_binding" "project" {
  project = "vulnerability-analytics"
  role    = "roles/custom_va_platform_engineer"

  members = [
    "user:benmorton8c@example.com",
  ]
}