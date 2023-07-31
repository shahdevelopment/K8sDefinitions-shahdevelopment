#!/bin/bash

kops update cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --yes --admin
