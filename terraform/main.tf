terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
  }
}

# This resource just ensures Terraform can run local commands
resource "null_resource" "minikube_start" {
  provisioner "local-exec" {
    command = "minikube start --driver=docker"
  }
}

resource "null_resource" "verify_minikube" {
  depends_on = [null_resource.minikube_start]
  provisioner "local-exec" {
    command = "kubectl get nodes"
  }
}

output "minikube_status" {
  value = "Minikube started and verified!"
}
