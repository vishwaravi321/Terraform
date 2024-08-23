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

