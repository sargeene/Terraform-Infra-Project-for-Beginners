variable "rg_name" {
  description = "resourcegroup name"
  type        = string
  default     = "rg"
}
variable "owner" {
  description = "resource owner"
  type        = string
  default     = "infra"
}
variable "environment" {
  description = "resource environment"
  type        = string
  default     = "pj"
}
variable "location" {
  description = "resourcegroup location"
  type        = string
  default     = "uksouth"
}
variable "win_vm_name" {
  description = "windows vm name"
  type        = string
  default     = "winvm"
}
variable "win_vm_username" {
  description = "windows username"
  type        = string
  default     = "adminuser"
}
variable "win_vm_password" {
  description = "windows password"
  type        = string
  default     = "P@$$w0rd1234!"
}
variable "flexible_server_name" {
  description = "Mysql flexibleserver"
  type        = string
  default     = "flexibleserver"
}
variable "flexible_server_db" {
  description = "Mysql flexibleserverdb"
  type        = string
  default     = "flexibledb"
}
variable "vnet" {
  description = "virtual network"
  type        = string
  default     = "vnet"
}
variable "nic" {
  description = "network interface card"
  type        = string
  default     = "nic"
}
variable "public_ip" {
  description = "public ip address"
  type        = string
  default     = "public_ip"
}
variable "subnet" {
  description = "network subnet"
  type        = string
  default     = "subnet"
}
variable "ip_config" {
  description = "ip configuration"
  type        = string
  default     = "ip-config"
}
variable "database_network_security_rule_name" {
  description = "db network security group rule"
  type        = string
  default     = "db-nsg-rule"
}
variable "db_nsg_name" {
  description = "db security group name"
  type        = string
  default     = "db-nsg"
}
variable "vm_network_security_rule_name" {
  description = "vm network security group rule"
  type        = string
  default     = "vm-nsg-rule"
}
variable "vm_nsg_name" {
  description = "vm security group name"
  type        = string
  default     = "vm-nsg"
}
variable "mysql_admin_login" {
  description = "flexibleserver admin login"
  type        = string
  default     = "mysqladminun"
}
variable "mysql_admin_pword" {
  description = "flexibleserver admin password"
  type        = string
  default     = "H@Sh1CoR3!"
}


