resource "rancher2_cloud_credential" "AWS" {
  name        = "AWS"
  description = "AWS Cloud Credential"
  amazonec2_credential_config {
    access_key = var.ACCESS_KEY
    secret_key = var.SECRET_ACCESS_KEY
  }
}