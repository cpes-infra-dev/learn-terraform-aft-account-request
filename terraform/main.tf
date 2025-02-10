module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cpes-infra+sandbox-mark-lehmann@centricsoftware.onmicrosoft.com"
    AccountName               = "sandbox-mark-lehmann"
    ManagedOrganizationalUnit = "DEV Account Factory"
    SSOUserEmail              = "cpes-infra+sandbox-mark-lehmann@centricsoftware.onmicrosoft.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

#Paul Hammond Account

module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cpes-infra+sandbox-paul-hammond@centricsoftware.onmicrosoft.com"
    AccountName               = "sandbox-paul-hammond"
    ManagedOrganizationalUnit = "DEV Account Factory"
    SSOUserEmail              = "cpes-infra+sandbox-paul-hammond@centricsoftware.onmicrosoft.com"
    SSOUserFirstName          = "Paul"
    SSOUserLastName           = "Hammond"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "DevOps"
    change_reason       = "New AWS Control Tower Account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
