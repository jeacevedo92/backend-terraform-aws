variable bucket_name {
  type        = string
  default     = "backend_terraform"
  description = "description"
}


variable acl {
  type        = string
  default     = "acl_privado"
  description = "description"
}


variable tags {
  default     = {
    Enviroment = "dev",
    CreatedBy = "terraform"
  } 
}

