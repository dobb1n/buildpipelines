
resource "google_project_iam_member" "project" {
  project = "vulnerability-analytics"
  role    = "roles/custom_va_platform_engineer"
  member = "user:benmorton8c@example.com"
}