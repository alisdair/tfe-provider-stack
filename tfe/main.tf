terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.57.0"
    }
  }
}

resource "tfe_workspace" "stack" {
  name = "stack-workspace"
}
