

data "google_iam_policy" "admin" {
  binding {
    role = "roles/notebooks.instances.start"
    role = "roles/notebooks.instances.stop"
    role = "roles/compute.networkViewer"
    role = "roles/compute.viewer"
    role = "compute.instances.setLabels"
    members = [
      "user:benmorton8c@example.com"
    ]
  }
}
