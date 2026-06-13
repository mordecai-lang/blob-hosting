
variable "resource_group_name" {
  type = string

}

variable "storage_account_name" {
  default = "mordecaistorageforblob"
}

variable "enable_frontdoor" {
  type    = bool
  default = false
}

variable "enable_front_door" {

}
