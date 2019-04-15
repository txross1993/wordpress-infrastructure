variable project {}
variable region {}

resource "google_compute_address" "ip_address" {
  name = "wordpress_pub_ip"
  project = "${var.project}"
  region = "${var.region}"

}

output "ip_address" {
  value = "${google_compute_address.ip_address.address}"
}
