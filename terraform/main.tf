module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "peterwadid1+aftdemo@gmail.com"
    AccountName               = "demo-aft"
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

module "import_a4ldev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "peterwadid1+a4ldev@gmail.com"
    AccountName               = "A4L-DEV"
    ManagedOrganizationalUnit = "Security (ou-kfmq-j4js7sr4)"
    SSOUserEmail              = "peterwadid1+a4ldev@gmail.com"
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
