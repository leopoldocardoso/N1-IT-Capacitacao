# Uso de variáveis para usuário e senha

variable "admin_username" {
  description = "Nome do usuáro"
  default     = "admin" #trocar para o nome de sua preferência
}

variable "admin_password" {
  description = "Senha usuário"
  default     = "admin" #trocar para senha de sua preferência
}