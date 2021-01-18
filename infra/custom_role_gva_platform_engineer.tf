resource "google_project_iam_custom_role" "custom_role_va_platform_engineer_project_level" {
  role_id     = "custom_va_platform_engineer"
  title       = "VA Platform Engineer Custom Role"
  description = "A custom role for the Platform engineers on the VA Platform."
  permissions = [
      "compute.instances.setLabels",
      "notebooks.instances.start",
      "notebooks.instances.stop"
  ]
}