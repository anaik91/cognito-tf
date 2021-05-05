resource "aws_cognito_user_pool_domain" "domain" {
  domain       = var.cognito_user_pool_domain
  user_pool_id = aws_cognito_user_pool.pool.id
}