# DigitalOcean Provider
variable "digitalocean_token" {}

terraform {
  required_version = ">= 1.2.8"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.22.1"
    }
  }
}
provider "digitalocean" {
  token = var.digitalocean_token
}