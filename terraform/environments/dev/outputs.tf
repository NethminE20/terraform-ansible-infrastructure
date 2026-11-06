output "container_name" {
  description = "Created Nginx container name"
  value       = docker_container.nginx_container.name
}

output "container_id" {
  description = "Created Nginx container ID"
  value       = docker_container.nginx_container.id
}

output "nginx_url" {
  description = "Nginx application URL"
  value       = "http://localhost:${var.nginx_external_port}"
}

output "docker_network" {
  description = "Created Docker network"
  value       = docker_network.dev_network.name
}