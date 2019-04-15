# Setup workspace
terraform {  
  backend "gcs" {
    bucket = "theastechtime-wordpress"
    prefix = "terraform/state"
    project = "Wordpress"
  }
}

module "ip" {
  source = "./modules/pub_ip"
  project = "${var.project}"
  region = "${var.region}"
}

module "instance" {
  source ="./modules/instance"
  zone = "${var.zone}"
  network = "${var.network}"
  address = "${module.ip.ip_address}"
}

output "address" {
  value = "${module.ip.ip_address}"
}
