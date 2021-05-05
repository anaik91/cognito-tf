variable "region" {
    type = string
    description = "AWS Region"
    default = "us-east-1"
}

variable "cognito_user_pool_name" {
    type = string
    description = "Name of the Cognito Userpool"
    default = "posiwise-tf-test"
}


variable "cognito_user_pool_domain" {
    type = string
    description = "Name of the Cognito Userpool Domain"
    default = "posiwise-tf-test"
}