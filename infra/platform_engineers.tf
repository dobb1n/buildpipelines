module "project-iam-bindings" {
  source   = "terraform-google-modules/iam/google//modules/projects_iam"
  projects = ["vulnerability-analytics"]
  mode     = "additive"

  bindings = {
    "roles/compute.networkViewer" = [
      "user:benmorton8c@example.com",
    ]
    "roles/compute.viewer" = [
      "user:benmorton8c@example.com",
    ]
    "roles/compute.instances.setLabels" = [
      "user:benmorton8c@example.com",
    ]
    "roles/notebooks.instances.start" = [
      "user:benmorton8c@example.com",
    ]
    "roles/notebooks.instances.stop" = [
      "user:benmorton8c@example.com",
    ]
  }
}