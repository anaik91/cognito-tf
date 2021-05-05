module "openidconnect_client" {
    source = "./cognito-client-module"
    region = var.region
    client_name = "openidconnect"
    user_pool_id = aws_cognito_user_pool.pool.id
    callback_urls = ["https://openidconnect.net/callback"]
}

output "openidconnect_clientid" {
    value = module.openidconnect_client.client_id
}

output "openidconnect_clientsecret" {
    value = module.openidconnect_client.client_secret
}


module "vault_client" {
    source = "./cognito-client-module"
    region = var.region
    client_name = "vault"
    user_pool_id = aws_cognito_user_pool.pool.id
    callback_urls = ["http://localhost:8250/oidc/callback","http://localhost:8200/ui/vault/auth/oidc/oidc/callback"]
}

output "vault_clientid" {
    value = module.vault_client.client_id
}

output "vault_clientsecret" {
    value = module.vault_client.client_secret
}