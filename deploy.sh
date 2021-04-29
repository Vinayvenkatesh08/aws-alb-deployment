#!/bin/bash
pushd terraform
terraform init
terraform plan
terraform apply
popd

terraform output -state=terraform/terraform.tfstate