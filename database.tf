module "oci_lz_autonomous_databases" {
    count  = var.autonomous_databases_configuration != null ? 1 : 0
    source = "git::https://github.com/oci-clickops/clickops-oci-adb-orchestrator.git//module"
    providers = {
      oci = oci
    }
    autonomous_databases_configuration = var.autonomous_databases_configuration
    compartments_dependency            = local.compartments_dependency
    network_dependency                 = local.network_dependency
    kms_dependency                     = local.kms_dependency
  }
