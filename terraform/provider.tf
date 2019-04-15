provider "google" {
    credentials = "${file("${var.account_credentials_file}")}"
    project     = "${var.project}" # Replace with your project name
    region      = "${var.region}"
  }