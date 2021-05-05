output "user_pool_id" {
    value = aws_cognito_user_pool.pool.id
}

output "cognito_domain" {
    value = "${var.cognito_user_pool_domain}.auth.${var.region}.amazoncognito.com"
}


output "cognito_wellknown_openidconfig" {
    value = "https://cognito-idp.${var.region}.amazonaws.com/${aws_cognito_user_pool.pool.id}/.well-known/openid-configuration"
}