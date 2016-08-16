
# For details regarding the aws provider, refer:
# https://www.terraform.io/docs/providers/aws/index.html

# Ensure your aws creds are sourced as env variables for this provider to pick up
# the vars are: AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION
provider "aws" {}

variable "zone_id" {}
variable "medium_cname_domain" {}
variable "medium_cname_target" {}

module "dns" {
  source = "./dns"
  zone_id = "${var.zone_id}"
  medium_cname_domain = "${var.medium_cname_domain}"
  medium_cname_target = "${var.medium_cname_target}"
}

