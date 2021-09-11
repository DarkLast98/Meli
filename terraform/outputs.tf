output "project-name" {
  value = data.google_project.this.name
}

output "project-id" {
  value = data.google_project.this.project_id
}

output "function-entrypoint" {
  value = data.google_project.this.project_id
  // value = google_cloudfunctions_function.function.https_trigger_url
}