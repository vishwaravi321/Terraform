terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
    }
  }
}

provider "hcloud" {
    token = var.hcloud_token
}


resource "hcloud_server" "my_server" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  location    = var.location
  ssh_keys = [var.ssh_key]
}

output "Name" {
  value = hcloud_server.my_server.name
}

output "ip" {
  value = hcloud_server.my_server.ipv4_address
}

output "Server-Type" {
  value = hcloud_server.my_server.server_type
}

output "Image" {
  value = hcloud_server.my_server.image
}

