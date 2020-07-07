module "dev_serviceaccount" {
  source = "./module"

  cluster_type             = module.dev_cluster.type_code
  cluster_config_file_path = module.dev_cluster.config_file_path
  namespace                = module.dev_tools_namespace.name
  service_account_name     = "test-serviceaccount"
  sscs                     = ["privileged", "anyuid"]
}
