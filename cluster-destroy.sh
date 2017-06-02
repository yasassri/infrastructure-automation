#!/bin/bash
echo "destroying the Kubenetes cluster and associated instances" 
prgdir=$(dirname "$0")
script_path=$(cd "$prgdir"; pwd)

# Seems Jenkins is not picking the Path variables from the system, hence as a workaroubd setting the path
TERRA_HOME=/home/wso2/terraform
export PATH=$TERRA_HOME:$PATH

terraform destroy -force
