variable "user_names" {
  description = "List of users to add to this repository"
  type        = list(map(any))
}

variable "product_name" {
  description = "Name of the product, this will be used in the team and respoistory name"
  type        = string
}

locals {
  repo_name = lower(replace(var.product_name, " ", "-"))
}