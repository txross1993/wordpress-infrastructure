variable zone {}
variable network {}
variable address {}

resource "google_compute_instance" "wp" {
    name = "my_wordpress_instance"
    machine_type = "custom-1-3072"
    zone = "${var.zone}"

    tags = ["https-server"]

    boot_disk {
        device_name = "wp"
        initialize_params {
            size = 10
            type = "pd-ssd"
            image = "ubuntu-1804-lts"
        }
    }

    #metadata_startup_script = "${file("../common/bootstrap_sawtooth.sh")}"

    network_interface {
        network = "${var.network}"
        access_config {
            nat_ip = "${var.address}"
        }
    }
}