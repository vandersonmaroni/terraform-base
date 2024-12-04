variable "aws_access_key" {
  description = "access key para acessar o ambiente da aws localmente"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "secret key para acessar o ambiente da aws localmente"
  type        = string
  sensitive   = true
}