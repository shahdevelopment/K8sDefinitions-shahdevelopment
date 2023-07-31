#!/bin/bash

kops edit ig nodes-us-west-1b --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.maxSize=1"
kops edit ig nodes-us-west-1c --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.maxSize=1"


kops edit ig nodes-us-west-1b --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.minSize=1"
kops edit ig nodes-us-west-1c --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.minSize=1"


kops edit ig control-plane-us-west-1b --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.maxSize=1"
kops edit ig control-plane-us-west-1b --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --set="spec.minSize=1"


kops update cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --yes --admin

kubectl config view --minify --flatten > ~/.kube/config
