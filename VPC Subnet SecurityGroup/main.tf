# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  user_id     = "${var.user_id}"
  tenant_id   = "${var.tenant_id}"
  password    = "${var.password}"

  region      = "ru-moscow1"
  auth_url    = "https://iam.ru-moscow1.huaweicloud.ru/v3"
  insecure    = "true"
}

resource "huaweicloud_networking_network_v2" "network_1" {
  name           = "network_1"
  admin_state_up = "true"
}

resource "huaweicloud_networking_subnet_v2" "subnet_1" {
  name       = "subnet_1"
  network_id = "${huaweicloud_networking_network_v2.network_1.id}"
  cidr       = "192.168.199.0/24"
  ip_version = 4
}

resource "huaweicloud_compute_secgroup_v2" "secgroup_1" {
  name        = "secgroup_1"
  description = "a security group"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
}


