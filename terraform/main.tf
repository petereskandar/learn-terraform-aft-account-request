module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "peterwadid1+aftdemo@gmail.com"
    AccountName               = "provisioned-aft-account"
    ManagedOrganizationalUnit = "sandbox (ou-kfmq-l2htx6yn)"
    SSOUserEmail              = "peterwadid1+aftdemo@gmail.com"
    SSOUserFirstName          = "Peter"
    SSOUserLastName           = "Eskandar"
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


# IMPORT A4LDEV ACCOUNT - 147839711267

module "import_provisioned-org" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "peterwadid1-org@gmail.com"
    AccountName               = "provisioned-org"
    ManagedOrganizationalUnit = "Administrators (ou-kfmq-hs0h7yjq)"
    SSOUserEmail              = "peterwadid1-org@gmail.com"
    SSOUserFirstName          = "Peter"
    SSOUserLastName           = "Eskandar"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
    "ACCOUNT_ORG" = "Administrators"
    "ACCOUNT_TYPE" = "Application"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "Administrators"
  }
  account_customizations_name = "sandbox"
}
