
################################################################################
# Create a new Droplet                                                         #
# This will create a new droplet with the terramino application deployment on  #
# an ubuntu distribution by loading a set of scripts in the termino_app.yaml   #
# file and adding a valid key to connect to the droplet.                       #
################################################################################

resource "digitalocean_droplet" "terramino" {
  
  # Ubuntu distro 18.04 x64
  image     = "ubuntu-18-04-x64"
  
  # Human droplet's name
  name      = "terramino"
  
  # Region where droplet will be deploying
  region    = "nyc1"

  # Kind of droplet's family
  size      = "s-1vcpu-1gb"
  
  # Scripts to run before droplet's start
  user_data = file("terramino_app.yaml")
  
  # Set Authorized SSH
  ssh_keys  = ["${digitalocean_ssh_key.kind-mesh.fingerprint}"]
}