
resource "google_project_iam_binding" "project" {
  project = "vulnerability-analytics"
  role    = "projects/{project_id}/roles/custom_va_platform_engineer"

  members = [
    "user:benmorton8c@example.com",
  ]
}