
resource "google_project_iam_member" "project" {
  project = "${var.project}"
  role    = "projects/${var.project}/roles/custom_va_platform_engineer"
  member = "user:benmorton8c@gmail.com"
}