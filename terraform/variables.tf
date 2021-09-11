variable "region" {
  type        = string
  default     = "us-east4"
  description = "The default App Engine region. For instance 'us-central1'"
}

variable "memory" {
  type        = number
  default     = 256
  description = "Function ram size"
}

variable "runtime" {
  type        = string
  default     = "java11"
  description = "Function runtime name"
}

variable "project_id" {
  type        = string
  default     = "meli-api-mutant"
  description = "Project id"
}

variable "location_id" {
  type        = string
  default     = "us-east"
  description = "Location id see https://cloud.google.com/about/locations"
}
