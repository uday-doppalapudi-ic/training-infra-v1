variable "subscription_ids" {
  description = "List of Azure subscription IDs to be used in the configuration."
  type        = map(string)
}

variable "subscription_name" {
  description = "Name of the Azure subscription to be used."
  type        = string
}

/*
  <env>-<project>-<resource_type>
*/
variable "environment" {
  description = "Environment name, e.g., dev, test, prod."
  type        = string
}

variable "project" {
  description = "Project name, e.g., myproject."
  type        = string
}