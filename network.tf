module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "7.0.0"

  project_id   = var.project_id
  network_name = var.vpc_name
  routing_mode = "GLOBAL"

  subnets = [
    {
      subnet_name           = var.subnet_name
      subnet_ip             = var.subnet_range
      subnet_region         = var.region
      subnet_private_access = true
    }
  ]
}
