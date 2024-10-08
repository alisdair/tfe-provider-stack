required_providers {
  tfe = {
    source  = "hashicorp/tfe"
    version = "0.55.0"
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
  ephemeral = true
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

output "workspace_id" {
  value = component.tfe.workspace_id
  type = string
}
