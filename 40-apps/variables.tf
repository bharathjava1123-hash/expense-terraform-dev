variable "project_name" {
  type        = string
  default     = "expense"
 
}

variable "environment" {
  type        = string
  default     = "dev"
}
variable "zone_name" {
  type        = string
  default     = "bharath.bond"
}
variable "common_tags" {
  default     = {
    Project = "Expense"
    terraform = true
    environment = "dev"
  }
}

variable "mysql_tags" {
  default     = {}
}

variable "frontend_tags" {
  default     = {}
}

variable "backend_tags" {
  default     = {}
}

variable "ansible_tags" {
  default     = {}
}