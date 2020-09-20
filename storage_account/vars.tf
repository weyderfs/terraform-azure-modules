  variable "asa_name" {
      type          = string
      default       = null
      description   = "Name of Storage Account"
  }
  variable "asa_resource_group_name" {
      type          = string
      default       = null
      description   = "Name of Resource Rroup"
  }
  variable "asa_location" {
      type          = string
      default       = null
      description   = "Geo Location"
  }
  variable "asa_account_tier" {
      type          = string
      default       = null
      description   = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  }
  variable "asa_account_replication_type" {
      type          = string
      default       = "GRS"
      description   = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  }