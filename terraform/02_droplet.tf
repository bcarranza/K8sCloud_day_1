resource "digitalocean_droplet" "terramino" {
  image     = "ubuntu-18-04-x64"
  name      = "terramino"
  region    = "nyc1"
  size      = "s-1vcpu-1gb"
  user_data = file("terramino_app.yaml")
  ssh_keys  = ["${digitalocean_ssh_key.kind-mesh.fingerprint}"]
}