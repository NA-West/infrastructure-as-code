resource "random_id" "instance_id" {
  byte_length = 8
}

resource "google_compute_instance" "mysql" {
  name         = "mysql-gcp-central-${random_id.instance_id.hex}"
  machine_type = "g1-small"
  zone         = "${var.zone}"

  # boot disk specifications
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-lts"
    }
  }

  # networks to attach to the VM
  network_interface {
    network = "default"
    access_config {} 
  }
}

resource "google_compute_project_metadata" "dev-ssh-key" {
  metadata {
    ssh-keys = "bob:${file("~/.ssh/bob.pub")}" 
  }
}