resource "google_compute_instance" "node-svc" {
  name         = "node-svc"
  machine_type = "f1-micro"
  zone         = "us-central1-c"

  # boot disk specifications
  boot_disk {
    initialize_params {
      image = "node-svc-base" // use image built with Packer
    }
  }

  # networks to attach to the VM
  network_interface {
    network = "default"
    access_config {} // use ephemeral public IP
  }
}

resource "google_compute_project_metadata" "node-svc" {
  metadata = {
    ssh-keys = "node-user:${file("~/.ssh/node-user.pub")}" // path to ssh key file
  }
}

resource "google_compute_firewall" "node-svc" {
  name    = "allow-node-svc-tcp-3000"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["3000"]
  }
  source_ranges = ["0.0.0.0/0"]
}