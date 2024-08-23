required_providers {
  tfe = {
    source  = "hashicorp/tfe"
    version = "0.57.0"
  }
}

variable "tfe_hostname" {
  type = string
}

variable "tfe_organization" {
  type = string
}

variable "tfe_token" {
  type = string
  sensitive = true
}

provider "tfe" "main" {
  config {
    hostname     = var.tfe_hostname
    organization = var.tfe_organization
    token        = var.tfe_token
  }
}

component "tfe" {
  source = "./tfe"

  providers = {
    tfe = provider.tfe.main
  }
}
