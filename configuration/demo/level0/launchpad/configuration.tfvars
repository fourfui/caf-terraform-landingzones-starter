landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}


# Default region. When not set to a resource it will use that value
default_region = "region1"

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
# passthrough = false
# adds random chars at the end of the names produced by the provider
# random_length = 3

# Inherit_tags defines if a resource will inherit it's resource group tags
inherit_tags = true

regions = {
  region1 = "southeastasia"
  region2 = "eastasia"
}

launchpad_key_names = {
  azuread_app            = "yw-caf_launchpad_level0"
  keyvault_client_secret = "aadapp-caf-launchpad-level0"
  tfstates = [
    "level0",
  ]
}

resource_groups = {
  level0 = {
    name = "yw-launchpad-level0"
    tags = {
      level = "level0"
    }
  }
  level1 = {
    name = "yw-launchpad-level1"
    tags = {
      level = "level1"
    }
  }
  level2 = {
    name = "yw-launchpad-level2"
    tags = {
      level = "level2"
    }
  }
  level3 = {
    name = "yw-launchpad-level3"
    tags = {
      level = "level3"
    }
  }
  # level4 = {
  #   name = "yw-launchpad-level4"
  #   tags = {
  #     level = "level4"
    # }
  # }
}

