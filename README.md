# aws-alb-deployment

This Terraform project will deploy an Application load balancer as a module from the source [aws-alb Terraform Project](https://github.com/Vinayvenkatesh08/aws-alb.git)

Following resources are created
* Application load balancer (internal or external)
* Load balancer listener(s) (HTTP, HTTPS or both)
* Target group(s) (HTTP, HTTPS or both)
* Security groups


## Required inputs

Inputs required for the deployment needs to be keyed inside the specifed tags <>
* vpc_id: VPC in which load balancer will be deployed
* prefix: prefix identity tag used in resource naming
* suffix: Suffix identity tag used in resource naming
* lb_name: load balancer resource name 
* lb_security_group_ids: security groups that needs to be associated
* lb_subnet_ids: subnet ids associated with 
* target_group: target group name
* host_headers: host_application names that needs load balancing
* target_id: Instance id's that are used as targets

## Pre-requisite

AWS CLI Profile


## Usage
```./deploy.sh```

## Outputs

* loadbalancer_name
* loadbalancer_arn
* loadbalancer_dns_name
* loadbalancer_arn
* loadbalancer_zone_id
