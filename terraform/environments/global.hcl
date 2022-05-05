#------------------------------------------------------------------------------
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Feb-2022
#
# usage: create global parameters, exposed to all
#        Terragrunt modules in this repository.
#------------------------------------------------------------------------------
locals {
  platform_name    = "MapleCrezee"
  platform_region  = "usa-east"
  root_domain      = "abarrotics.com"
  aws_region       = "us-east-1"
  account_id       = "946896782606"
  ec2_ssh_key_name = "maplecrezee"
  aws_route53_hosted_zone_id = "Z0845988PUZ5PGJKCW0S"
  zone_id          = "Z0845988PUZ5PGJKCW0S"

  tags = {
    Platform        = local.platform_name
    Platform-Region = local.platform_region
    Terraform       = "true"
  }

}

inputs = {
  platform_name    = local.platform_name
  platform_region  = local.platform_region
  aws_region       = local.aws_region
  account_id       = local.account_id
  root_domain      = local.root_domain
  ec2_ssh_key_name = local.ec2_ssh_key_name
  zone_id          = local.zone_id
}
