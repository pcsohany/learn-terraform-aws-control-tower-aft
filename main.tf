# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
   source                      = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  ct_management_account_id    = 911403190714
  log_archive_account_id      = 492604715259
  audit_account_id            = 159779466361
  aft_management_account_id   = 730506990486
  ct_home_region              = "eu-west-1"
  tf_backend_secondary_region = "eu-west-2"

  vcs_provider                                  = "github"
  account_request_repo_name                     = "github.com/pcsohany/learn-terraform-aft-account-request"
  global_customizations_repo_name               = "github.com/pcsohany/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "github.com/pcsohany/learn-terraform-aft-account-customizations"
  account_provisioning_customizations_repo_name = "github.com/pcsohany/learn-terraform-aft-account-provisioning-customizations"
}
