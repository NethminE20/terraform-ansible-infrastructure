variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "nginx_container_name" {
  description = "Name of the Nginx container"
  type        = string
  default     = "dev-nginx"
}

variable "nginx_external_port" {
  description = "Host port exposed for Nginx"
  type        = number
  default     = 8080
}