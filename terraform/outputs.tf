
################################################################################
# Output variables                                                             #
# Output values make information about your infrastructure available on the    #
# command line, and can expose information for other Terraform configurations  #
# to use. Output values are similar to return values in programming languages. #
################################################################################

# Ip address assiged by digital ocean to our droplet
output "ip_address" {
  value = digitalocean_droplet.terramino.ipv4_address
  description = "The public IP address of your droplet application."
}