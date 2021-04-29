module "alb" {
  source             = "git::https://github.com/Vinayvenkatesh08/aws-alb.git"
  aws_region         = "us-east-1"
  vpc_id             = "<vpc-name>"
  prefix             = "<prefix-name>"
  suffix             = "<suffix-name>"
  lb_name            = "<loadbalancer-name>"
  create_internal_lb = true
  lb_security_group_ids   = ["<sg-id1>", "<sg-id2>"]
  lb_subnet_ids           = ["<subnet-id1>"]
  create_lb_http_listener = true
  lb_http_listener_port   = 80
  http_target_group_parameters = [
    {
      target_group = "<targetgroup1-name-http>"
      host_headers = ["<application-1.com>", "<application-1-co.uk>"]
      port         = 80
    },
    {
      target_group = "<targetgroup2-name-http>"
      host_headers = ["<application-2.com>", "<application-2.de>"]
      port         = 10002
    },
  ]

  create_lb_https_listener = true
  lb_https_listener_port   = 443
  https_target_group_parameters = [
    {
      target_group = "<targetgroup1-name-https>"
      host_headers = ["<application-1.com>", "<application-1-co.uk>"]
      port         = 443
    },
    {
      target_group = "<targetgroup1-name-https>"
      host_headers = ["<application-2.com>", "<application-2.de>"]
      port         = 10002
    },
  ]
  enable_lb_https_offloading = false
  certificate_arn = "arn:<arn of certificate>"

  target_id = "<target-instace-id1>,<target-instace-id2>,<target-instace-id3>"

  http_health_check_interval = 15 #default = 30
  http_health_check_path = "/status/load-balancer" #default = "/"
  http_health_check_port = 1500 #default = "traffic-port"
  http_health_check_timeout = 10 #default = 5
  http_health_check_healthy_threshold = 2 #default = 3
  http_health_check_unhealthy_threshold = 2 #default = 3
  http_health_check_matcher = "200-299" #default = 200 (Success codes)

  https_health_check_interval = 15 #default = 30
  https_health_check_path = "/status/load-balancer" #default = "/"
  https_health_check_port = 1500 #default = "traffic-port"
  https_health_check_timeout = 10 #default = 5
  https_health_check_healthy_threshold = 2 #default = 3
  https_health_check_unhealthy_threshold = 2 #default = 3
  https_health_check_matcher = "200-299" #default = 200 (Success codes)

