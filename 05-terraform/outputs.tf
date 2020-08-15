output "node_svc_public_ip" {
  value = "${google_compute_instance.node-svc.network_interface.0.access_config.0.nat_ip}"
}
