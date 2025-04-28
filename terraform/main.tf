# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

module "aft" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory"

  # Required variables
  ct_management_account_id  = "000025530748"
  log_archive_account_id    = "125370714256"
  audit_account_id          = "228209566540"
  aft_management_account_id = "795633297806"
  ct_home_region            = "us-east-2"

  # AFT Feature flags
  aft_feature_cloudtrail_data_events      = "false"
  aft_feature_enterprise_support          = "false"
  aft_feature_delete_default_vpcs_enabled = "false"

  # Terraform variables
  terraform_version      = "1.11.4"
  terraform_distribution = "oss"

  # VCS variables (only if you are not using AWS CodeCommit)
  vcs_provider                                  = "github"
  account_request_repo_name                     = "gustafst/aft-account-request"
  account_customizations_repo_name              = "gustafst/aft-account-customizations"
  account_provisioning_customizations_repo_name = "gustafst/aft-account-provisioning-customizations"
  global_customizations_repo_name               = "gustafst/aft-global-customizations"
}
