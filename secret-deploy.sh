#!/bin/bash

kubectl create secret tls k8.shahdevelopment.tech --cert=$variable2 --key=$variable1 -n profile-site


kubectl create secret docker-registry secret-tiger-docker --docker-email=$variable5 --docker-username=$variable3 --docker-password=$variable4 -n profile-site

kubectl get secrets -n profile-site

kubectl get secrets -n ingress-ngnx
