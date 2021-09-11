/**
 * Create default function source code
 * 
 * @see https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object
 */
resource "google_storage_bucket_object" "archive" {
  name   = "functions.zip"
  source = "${path.module}/files/functions.zip"
  bucket = google_storage_bucket.functions.name
}