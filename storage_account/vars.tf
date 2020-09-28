  variable "name" {
      type          = string
      default       = null
      description   = "Name of Storage Account"
  }
  variable "resource_group_name" {
      type          = string
      default       = null
      description   = "Name of Resource Rroup"
  }
  variable "location" {
      type          = string
      default       = null
      description   = "Geo Location"
  }
  variable "account_tier" {
      type          = string
      default       = "Standard"
      description   = "(Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  }
  variable "account_replication_type" {
      type          = string
      default       = "GRS"
      description   = "(Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  }