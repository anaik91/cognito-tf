output "client_id" {
    value = aws_cognito_user_pool_client.client1.id
}


output "client_secret" {
    value = aws_cognito_user_pool_client.client1.client_secret
}