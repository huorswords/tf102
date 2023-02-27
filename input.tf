variable "rg_name" {
    type = string
    default = "TF102-RG"
}

variable "location" {
    type = string
    validation {
      condition = var.location == "westeurope" || var.location == "northeurope"
      error_message = "Not valid location (valid values: westeurope | northeurope)"
    }
}