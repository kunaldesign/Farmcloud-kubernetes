variable "aws_region" {
  description = "The aws region to use"
  type        = string
  default     = "eu-west-2"
}

variable "env_name" {
  description = "The environment to deploy the stack"
  type        = string
  default     = "development"
}

variable "owner_name" {
  description = "The owner name of the project"
  type        = string
  default     = "farmcloud"
}

variable "business_name" {
  description = "The business name"
  type        = string
  default     = "synnefa"
}



