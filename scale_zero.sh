#!/bin/bash

kops edit ig nodes-us-west-1b --state=s3://kubedevops001 --set="spec.minSize=0"
kops edit ig nodes-us-west-1c --state=s3://kubedevops001 --set="spec.minSize=0"


kops edit ig nodes-us-west-1b --state=s3://kubedevops001 --set="spec.maxSize=0"
kops edit ig nodes-us-west-1c --state=s3://kubedevops001 --set="spec.maxSize=0"


kops edit ig control-plane-us-west-1b --state=s3://kubedevops001 --set="spec.minSize=0"
kops edit ig control-plane-us-west-1b --state=s3://kubedevops001 --set="spec.maxSize=0"

kops update cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --yes --admin

kubectl config view --minify --flatten > ~/.kube/config
