# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

module "aft" {
   source                      = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  ct_management_account_id    = var.911403190714
  log_archive_account_id      = var.492604715259
  audit_account_id            = var.159779466361
  aft_management_account_id   = var.730506990486
  ct_home_region              = var.eu-west-1
  tf_backend_secondary_region = "eu-west-2"

  vcs_provider                                  = "github"
  account_request_repo_name                     = "${var.github_pcsohany}/learn-terraform-aft-account-request"
  global_customizations_repo_name               = "${var.github_pcsohany}/learn-terraform-aft-global-customizations"
  account_customizations_repo_name              = "${var.github_pcsohany}/learn-terraform-aft-account-customizations"
  account_provisioning_customizations_repo_name = "${var.github_pcsohany}/learn-terraform-aft-account-provisioning-customizations"
}
