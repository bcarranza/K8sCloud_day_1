
################################################################################
# Terraform provider                                                           #
# A provider is a Terraform plugin that allows users to manage an external API.# 
# Provider plugins like the AWS provider or the cloud-init provider act as a   #
# translation layer that allows Terraform to communicate with many different   #
# cloud providers, databases, and services.                                    #
################################################################################

# environment variable where do you need to set the generated digital ocean token
variable "digitalocean_token" {}

# Plugin available for digital ocean operation https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
terraform {
  required_version = ">= 1.2.8"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.22.1"
    }
  }
}

# Configure the DigitalOcean provider and specify the credentials for your DigitalOcean account by assigning the digitalocean_token
provider "digitalocean" {
  token = var.digitalocean_token
}