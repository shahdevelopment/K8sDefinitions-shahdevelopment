#!/bin/bash

# Store the base64-encoded contents of config.json in a variable
SECRET_DATA=$(base64 -w 0 config.json)

rm secret.yaml

CERT_BASE64=$(base64 -w 0 < cert)
KEY_BASE64=$(base64 -w 0 < key)

# Create a Kubernetes Secret YAML file with the variable as the data value
cat <<EOF > secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: secret-tiger-docker
  namespace: profile-site
  type: kubernetes.io/dockerconfigjson
data:
  .dockerconfigjson: $SECRET_DATA
---
apiVersion: v1
kind: Secret
metadata:
  name: wildcard-certificate
  namespace: profile-site
type: kubernetes.io/tls
data:
  tls.crt: $CERT_BASE64
  tls.key: $KEY_BASE64
---
apiVersion: v1
kind: Secret
metadata:
  name: wildcard-certificate
  namespace: ingress-nginx
type: kubernetes.io/tls
data:
  tls.crt: $CERT_BASE64
  tls.key: $KEY_BASE64
EOF

rm -rf helm/profilecharts/templates/*

cp * helm/profilecharts/templates/