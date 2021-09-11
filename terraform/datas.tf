/**
 * Generate compresed functions source
 *
 * @see https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/archive_file
 */
data "archive_file" "source" {
  type        = "zip"
  source_dir  = abspath("../functions/build/")
  output_path = "/tmp/functions.zip"
}