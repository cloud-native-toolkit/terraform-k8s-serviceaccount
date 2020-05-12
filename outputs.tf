output "name" {
  value       = var.service_account_name
  description = "Name of the service account that was created"
  depends_on  = [
    kubernetes_service_account.create,
    null_resource.add_ssc_openshift,
  ]
}

output "namespace" {
  value       = var.namespace
  description = "Name of the namespace wher ethe service account was created"
  depends_on  = [
    kubernetes_service_account.create,
    null_resource.add_ssc_openshift,
  ]
}
