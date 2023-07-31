#!/bin/bash

SECRET_DATA=$(base64 -w 0 < config.json)
CERT_BASE64=$(base64 -w 0 < cert.pem)
KEY_BASE64=$(base64 -w 0 < key.pem)

ls secret.yaml 2>/dev/null

if [ $? -eq 0 ]; then
  rm secret.yaml 2>/dev/null
else
  echo creating secret.yaml
fi

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

ls helm/profilecharts/templates/ 2>/dev/null
if [ $? -eq 0 ]; then
  rm -rf helm/profilecharts/templates/*
  cp *.yaml helm/profilecharts/templates/
else
  mkdir helm/profilecharts/templates/
  cp *.yaml helm/profilecharts/templates/
fi
