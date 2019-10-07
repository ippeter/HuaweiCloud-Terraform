# Configure the HuaweiCloud Provider
provider "huaweicloud" {
  user_id     = "${var.user_id}"
  tenant_id   = "${var.tenant_id}"
  password    = "${var.password}"

  region      = "ru-moscow1"
  auth_url    = "https://iam.ru-moscow1.huaweicloud.ru/v3"
  insecure    = "true"
}

resource "huaweicloud_lb_loadbalancer_v2" "loadbalancer" {
  vip_subnet_id = "ae6fa1c9-65f3-43d3-bb95-9b22ef528c8c"
  name			= "elb-01"
  description	= "Test Load Balancer"
  admin_state_up = "true"
}



