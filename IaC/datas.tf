/**
 * Create
 *
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project
 */
data "google_project" "this" {
  count = var.create_new_project ? 1 : 0
}