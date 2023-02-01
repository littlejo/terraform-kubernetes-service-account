resource "kubernetes_service_account" "this" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }
  automount_service_account_token = var.automount_service_account_token
}

resource "kubernetes_secret" "this" {
  metadata {
    name      = var.name
    namespace = var.namespace
    annotations = {
      "kubernetes.io/service-account.name" = kubernetes_service_account.this.metadata[0].name
    }
  }
  type = "kubernetes.io/service-account-token"
}

resource "kubernetes_cluster_role_binding" "this" {
  count = var.create_cluster_role_binding ? 1 : 0
  metadata {
    name = var.cluster_role_binding.name
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = var.cluster_role_binding.role_kind
    name      = var.cluster_role_binding.role_name
  }
  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.this.metadata[0].name
    namespace = var.namespace
  }
}
