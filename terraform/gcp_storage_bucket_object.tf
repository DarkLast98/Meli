/**
 * Create default function source code
 * 
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object
 */
resource "google_storage_bucket_object" "archive" {
  name   = "meli-functions.zip${data.archive_file.source.output_md5}"
  bucket = google_storage_bucket.functions.name
  source = data.archive_file.source.output_path
}