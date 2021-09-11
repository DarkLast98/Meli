/**
 * Get current project data
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project
 */
data "google_project" "this" {
  project_id      = var.project_id
}