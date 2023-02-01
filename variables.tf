variable "name" {
  description = "Name of the service account"
  type        = string
}

variable "namespace" {
  description = "Namespace of the service account and secrets"
  type        = string
  default     = "default"
}

variable "automount_service_account_token" {
  description = "Automount service account token"
  type        = bool
  default     = false
}

variable "create_cluster_role_binding" {
  description = "Create a cluster role binding"
  type        = bool
  default     = true
}

variable "cluster_role_binding" {
  description = "Namespace of the service account and secrets"
  type = object({
    name      = string
    role_kind = optional(string, "ClusterRole")
    role_name = string
  })
  default = {
    name      = "a"
    role_kind = "ClusterRole"
    role_name = "a"
  }
}
