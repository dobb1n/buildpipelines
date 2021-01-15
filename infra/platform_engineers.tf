

data "google_iam_policy" "admin" {
  binding {
    role = "roles/viewer"
    members = [
      "user:benmorton8c@example.com",
    ]
  }
}
