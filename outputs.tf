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
