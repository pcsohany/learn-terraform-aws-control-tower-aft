# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
   source                      = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  ct_management_account_id    = 123456789101
  log_archive_account_id      = 123456789102
  audit_account_id            = 123456789103
  aft_management_account_id   = 123456789104
  ct_home_region              = "eu-central-1"
  tf_backend_secondary_region = "eu-central-2"

  vcs_provider                                  = "github"
  account_request_repo_name                     = "github.com/pcsohany/learn-terraform-aft-account-request"
  global_customizations_repo_name               = "github.com/pcsohany/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "github.com/pcsohany/learn-terraform-aft-account-customizations"
  account_provisioning_customizations_repo_name = "github.com/pcsohany/learn-terraform-aft-account-provisioning-customizations"
}
