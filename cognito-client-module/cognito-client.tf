resource "aws_cognito_user_pool_client" "client1" {
    name = var.client_name
    user_pool_id = var.user_pool_id
    generate_secret  = true
    access_token_validity = 60
    allowed_oauth_flows = ["code"]
    allowed_oauth_flows_user_pool_client = true
    allowed_oauth_scopes = [ "email", "openid","profile" ]
    callback_urls = var.callback_urls
    explicit_auth_flows = [ "ALLOW_CUSTOM_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_SRP_AUTH" ]
    id_token_validity = 60
    refresh_token_validity = 30
    prevent_user_existence_errors = "ENABLED"
    read_attributes = [
              "address",
              "birthdate",
              "email",
              "email_verified",
              "family_name",
              "gender",
              "given_name",
              "locale",
              "middle_name",
              "name",
              "nickname",
              "phone_number",
              "phone_number_verified",
              "picture",
              "preferred_username",
              "profile",
              "updated_at",
              "website",
              "zoneinfo"
    ]

    supported_identity_providers = [ "COGNITO" ]

    token_validity_units  {
        access_token = "minutes"
        id_token = "minutes"
        refresh_token = "days"
    }

    write_attributes =  [
              "address",
              "birthdate",
              "email",
              "family_name",
              "gender",
              "given_name",
              "locale",
              "middle_name",
              "name",
              "nickname",
              "phone_number",
              "picture",
              "preferred_username",
              "profile",
              "updated_at",
              "website",
              "zoneinfo"
            ]
}