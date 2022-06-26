# Uso de Variáveis

variable "namerg" {
  description = "Nome do Resource Group"
  type        = string
  default     = "rg-n1it-capacitacao"

}

variable "location" {
  description = "Localizacao dos Recurosos"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags nos recursos"
  type        = map(any)
  default = {
    Ambiente    = "N1 IT/Capacitacao"
    Responsavel = "Leopoldo Cardoso"
    Recurso     = "Máquina Virtual"
  }

}