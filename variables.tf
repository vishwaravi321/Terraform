variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
}


variable "name" {
    description = "Name of the server to be Deployed"
    type = string
}

variable "image" {
  description = "Server image"
  type        = string
}

variable "ssh_key" {
  description = "SSH Key"
  type        = string
}


variable "server_type" {
    description = "Type of the Server"
    type = string
}

variable "location" {
    description = "Location in which the server will be deployed"
    type = string
}