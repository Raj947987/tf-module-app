resource "null_resource" "test" {
  triggers = {
    xyz = timestamp()
  }
  provisioner "local-exec" {
    command = "echo hello world - Env - ${var.env}"
  }
}