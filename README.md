<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.17.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_cluster_role_binding.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/cluster_role_binding) | resource |
| [kubernetes_secret.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service_account.this](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_automount_service_account_token"></a> [automount\_service\_account\_token](#input\_automount\_service\_account\_token) | Automount service account token | `bool` | `false` | no |
| <a name="input_cluster_role_binding"></a> [cluster\_role\_binding](#input\_cluster\_role\_binding) | Namespace of the service account and secrets | <pre>object({<br>    name      = string<br>    role_kind = optional(string, "ClusterRole")<br>    role_name = string<br>  })</pre> | <pre>{<br>  "name": "a",<br>  "role_kind": "ClusterRole",<br>  "role_name": "a"<br>}</pre> | no |
| <a name="input_create_cluster_role_binding"></a> [create\_cluster\_role\_binding](#input\_create\_cluster\_role\_binding) | Create a cluster role binding | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the service account | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace of the service account and secrets | `string` | `"default"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->