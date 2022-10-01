################################################################################
# Create a new SSH Key                                                         #
# You can manage your Droplets using password-based logins, but we strongly    #
# recommend using SSH key pairs instead. SSH keys are more secure than         #
#passwords and can help you log in without having to remember long passwords.  #
################################################################################
resource "digitalocean_ssh_key" "kind-mesh" {
  name       = "kind-mesh@digitalocean.com"
  public_key = file("../ssh-key.pub")
}