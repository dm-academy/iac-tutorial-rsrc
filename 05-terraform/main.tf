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
