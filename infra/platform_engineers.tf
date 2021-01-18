
resource "google_project_iam_member" "project" {
  project = "vulnerability-analytics"
  role    = "projects/${var.project}/roles/${google_project_iam_custom_role.custom_role_va_platform_engineer_project_level.custom_va_platform_engineer}"
  member = "user:benmorton8c@gmail.com"
}