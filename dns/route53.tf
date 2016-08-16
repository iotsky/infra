
variable "zone_id" {
  type    = "string"
}

variable "medium_cname_domain" {
  type    = "string"
}

variable "medium_cname_target" {
  type    = "string"
}

resource "aws_route53_record" "blog" {
   zone_id = "${var.zone_id}"
   # change this to your custom domain name
   name = "blog.foobar.io"
   type = "A"
   ttl = "300"
   records = ["52.0.16.118", "52.1.119.170", "52.1.147.205", "52.1.173.203", "52.4.145.119", "52.4.175.111",
              "52.4.225.124", "52.4.240.221", "52.4.38.70", "52.5.181.79", "52.6.3.192", "52.6.46.142"]
}

resource "aws_route53_record" "medium" {
   zone_id = "${var.zone_id}"
   name = "${var.medium_cname_domain}"
   type = "CNAME"
   ttl = "300"
   records = ["${var.medium_cname_target}"]
}


