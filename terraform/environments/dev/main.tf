resource "docker_network" "dev_network" {
  name = "${var.environment}-network"
}

resource "docker_image" "nginx_image" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "nginx_container" {
  name  = var.nginx_container_name
  image = docker_image.nginx_image.image_id

  restart = "unless-stopped"
  memory  = 128

  networks_advanced {
    name = docker_network.dev_network.name
  }

  ports {
    internal = 80
    external = var.nginx_external_port
    ip       = "127.0.0.1"
  }
}