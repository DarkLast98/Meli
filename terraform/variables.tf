variable "region" {
  type        = string
  default     = "us-central1"
  description = "The default App Engine region. For instance 'us-central1'"
}

variable "memory" {
  type        = number
  default     = 256
  description = "Function ram size"
}

variable "runtime" {
  type        = string
  default     = "nodejs14"
  description = "Function runtime name"
}

variable "project_id" {
  type        = string
  description = "Portal project id"
}
