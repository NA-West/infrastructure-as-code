# Provider configuration variables
variable "project_id" {
  description = "Project ID in GCP"
}

variable "region" {
  description = "Region in which to manage GCP resources"
}

# Instance configuration variables
variable "instance_name" {
  description = "The name of the instance, unique within the project and zone"
}

variable "zone" {
  description = "The zone in which instances should be created in"
}

