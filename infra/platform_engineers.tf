resource "google_project_iam_policy" "project" {
  project     = "vulnerability-analytics"
  policy_data = data.google_iam_policy.admin.policy_data
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/custom_va_platform_engineer"

    members = [
      "user:benmorton8c@example.com",
    ]
  }
}