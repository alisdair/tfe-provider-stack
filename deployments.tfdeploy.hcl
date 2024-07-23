deployment "main" {
  inputs = {
    tfe_organization = "hashicorp"
    tfe_hostname     = "tfcdev-53903557.ngrok.app"
    tfe_token        = store.varset.tokens.local_tfe_token
  }
}

store "varset" "tokens" {
  id = "varset-ys5uLJTSEqJZwZL6"
}
