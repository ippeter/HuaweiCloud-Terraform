# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  user_id     = "${var.user_id}"
  tenant_id   = "${var.tenant_id}"
  password    = "${var.password}"

  region      = "ru-moscow1"
  auth_url    = "https://iam.ru-moscow1.huaweicloud.ru/v3"
  insecure    = "true"
}

resource "huaweicloud_blockstorage_volume_v2" "voldata" {
  uuid              = "29aa1fdb-10f2-4c3f-a926-16f092b53a00"
  size              = 100

  timeouts {
    create = "1800s"
  }
}