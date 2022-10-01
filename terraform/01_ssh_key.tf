## Create a new SSH key
resource "digitalocean_ssh_key" "kind-mesh" {
  name       = "kind-mesh@digitalocean.com"
  public_key = file("../ssh-key.pub")
}