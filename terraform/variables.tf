variable "project" {
    description = "Provide the name of the google project in which to create the resources"
}

variable "region" {
  description = "Provide the region. I.e. us-central-1"
}
variable "zone" {
    description = "Provide the zone. I.e. us-central-1a"
}

variable "account_credentials_file" {
  description = "Provide the full or relative path to your google cloud credentials file with an account that has permissions to deploy these resources"
}

variable "network" {
  description = "Name of the network to apply the google compute instance to"
  default = "default"
}

variable "bucket" {
  description = "Name of bucket to hold terraform state"  
}
