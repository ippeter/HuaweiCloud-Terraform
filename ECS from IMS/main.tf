# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  user_id     = "${var.user_id}"
  tenant_id   = "${var.tenant_id}"
  password    = "${var.password}"

  region      = "ru-moscow1"
  auth_url    = "https://iam.ru-moscow1.huaweicloud.ru/v3"
  insecure    = "true"
}

resource "huaweicloud_compute_instance_v2" "server-01" {
  name              = "server-01"
  image_id          = "ff258282-fd1a-479a-a720-0f0693411b15"
  flavor_id         = "s3.small.1"
  key_pair          = "KeyPair-Demo"
  security_groups   = ["sg-no-22-3389"]
  availability_zone = "ru-moscow1a"

  network {
    uuid = "d97bb76a-12ac-4c36-9d1c-5603301ab1d0"
  }

  timeouts {
    create = "10m"
    delete = "10m"
  }
}