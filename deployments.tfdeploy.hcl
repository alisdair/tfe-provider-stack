deployment "main" {
  inputs = {
    tfe_organization = "hashicorp"
    tfe_hostname     = "tfcdev-53903557.ngrok.app"
    tfe_token        = store.varset.tokens.values.local_tfe_token
  }
}

store "varset" "tokens" {
  id = "varset-ys5uLJTSEqJZwZL6"
}

// store "vault" "garbage" {
//  // Use as store.vault.garbage.values.whatever
// }

// store "vault_secrets" "hcp" {
//  // Use as store.vault_secrets.hcp.values.whatever
// }
