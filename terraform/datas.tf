/**
 * Generate compresed functions source
 *
 * @see https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/archive_file
 */
data "archive_file" "source" {
  type        = "zip"
  source_dir  = abspath("../functions/")
  output_path = "/tmp/functions.zip"
}

/**
 * Get current project data
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/project
 */
data "google_project" "this" {
  project_id = var.project_id
}