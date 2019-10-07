# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  user_id     = "${var.user_id}"
  tenant_id   = "${var.tenant_id}"
  password    = "${var.password}"

  region      = "ru-moscow1"
  auth_url    = "https://iam.ru-moscow1.huaweicloud.ru/v3"
  insecure    = "true"
}

resource "huaweicloud_vpc_v1" "tf_test_vpc" {
  name = "tf_test_vpc"
  cidr = "192.168.0.0/16"
}

resource "huaweicloud_vpc_subnet_v1" "tf_test_subnet" {
  name = "hu_cloud_subnet"
  cidr = "192.168.40.0/24"
  gateway_ip = "192.168.40.1"
  vpc_id = "${huaweicloud_vpc_v1.tf_test_vpc.id}"
}

resource "huaweicloud_nat_gateway_v2" "tf_test_nat" {
  name = "hu_cloud_nat"
  spec = "1"
  router_id = "${huaweicloud_vpc_v1.tf_test_vpc.id}"
  internal_network_id = "${huaweicloud_vpc_subnet_v1.tf_test_subnet.id}"
}
