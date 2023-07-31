#!/bin/bash
echo
echo ################################################################################################
echo ################################################################################################
echo ################################################################################################
echo
echo
kops delete cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --yes
echo
echo
for ((i=60; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo
#kops create cluster --name=kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --zones=us-west-1b,us-west-1c --node-count=2 --node-size=t3.medium --master-size=t3.medium --dns-zone=kubecluster.shahdevelopment.tech --node-volume-size=15 --master-volume-size=15
kops create cluster --name=kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --zones=us-west-1b,us-west-1c --master-size=t3.medium --dns-zone=kubecluster.shahdevelopment.tech --master-volume-size=15
echo
echo
for ((i=10; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo
kops create instancegroup nodes --name=kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --role=Node --node-count=2 --zones=us-west-1b,us-west-1c --node-size=t3.medium --dns-zone=kubecluster.shahdevelopment.tech --node-volume-size=15
echo
echo
for ((i=10; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo
echo ################################################################################################
echo ################################################################################################
echo
echo
kops update cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --yes --admin
echo
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo
echo
echo
echo ################################################################################################
echo ################################################################################################
echo
echo
kops validate cluster --name kubecluster.shahdevelopment.tech --state=s3://kubedevops001 --wait 20m
echo
echo
echo
echo ################################################################################################
echo ################################################################################################
echo
echo $base64_encoded_username
if [ $? -eq 0 ]; then
  echo "base64_encoded_username set successfully."
else
  echo "Command failed with exit status $?."
  read -s -p "Enter your username: " username
  base64_encoded_username=$(echo -n "$username" | base64)i
  export base64_encoded_username
  echo $base64_encoded_username
fi
echo ################################################################################################
echo $base64_encoded_password
if [ $? -eq 0 ]; then
  echo "base64_encoded_username set successfully."
else
  read -s -p "Enter your token/password: " password
  base64_encoded_password=$(echo -n "$password" | base64)
  export base64_encoded_password
  echo $base64_encoded_password
fi
echo ################################################################################################
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo ################################################################################################
echo
echo
#kubectl delete ns ingress-nginx
#kubectl delete deploy my-app
#kubectl delete svc front-end-service
echo
echo ################################################################################################
echo
echo
echo $cert
if [ $? -eq 0 ]; then
  echo "cert set successfully."
else
  echo "Enter your multiline cert (type 'end' on a new line to finish):"
  cert=""
  while IFS= read -r -s line; do
    if [ "$line" = "end" ]; then
      break
    fi
    # Append each line to the multiline_input variable
    cert+="$line"$'\n'
  done

  # Remove the last newline character from the variable
  cert="${cert%$'\n'}"

  CERTIFICATE_BASE64=$(echo -n "$cert" | base64)
  export CERTIFICATE_BASE64
  echo $CERTIFICATE_BASE64
fi
echo
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo ################################################################################################
echo
echo
echo $key
if [ $? -eq 0 ]; then
  echo "key set successfully."
else
  echo "Enter your multiline key (type 'end' on a new line to finish):"
  key=""
  while IFS= read -r -s line_key; do
    if [ "$line_key" = "end" ]; then
      break
    fi
    # Append each line to the multiline_input variable
    key+="$line_key"$'\n'
  done
  # Remove the last newline character from the variable
  key="${key%$'\n'}"

  PRIVATE_KEY_BASE64=$(echo -n "$key" | base64)
  export PRIVATE_KEY_BASE64
  echo $PRIVATE_KEY_BASE64
fi
echo
echo
echo ################################################################################################
echo ################################################################################################
echo Deploying services......
echo ################################################################################################
echo ################################################################################################
echo
echo
kubectl apply -f ingress-nginx.yaml
echo
for ((i=5; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
kubectl create secret tls wildcard-certificate --cert=certs/cert --key=certs/key -n ingress-nginx
echo
for ((i=5; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
kubectl apply -f nic.yaml
echo
echo ################################################################################################
for ((i=5; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
echo
if [ $? -eq 0 ]; then
  echo "ingress.yaml applied successfully."
  kubectl get ingress -n profile-site
else
  echo "ingress.yaml failed with exit status $?."
  kubectl describe ingress -n profile-site
fi
echo
echo
#kubectl expose deployment d-node-sample-helloworld --name
echo ################################################################################################
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
if [ $? -eq 0 ]; then
  echo "aws-elb.yaml applied successfully."
  kubectl get pods -n ingress-nginx
else
  echo "aws-elb.yaml failed with exit status $?."
  kubectl get pods -n ingress-nginx
fi
echo
aws elbv2 describe-load-balancers | grep DNSName
echo
echo Add DNS Entry..........
echo
PAUSE
echo
echo ################################################################################################
echo
kubectl apply -f profile-site.yaml
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
kubectl apply -f ingress.yaml
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
kubectl create secret tls wildcard-certificate --cert=certs/cert --key=certs/key -n profile-site
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
kubectl create secret docker-registry secret-tiger-docker --docker-email=$variable5 --docker-username=$variable3 --docker-password=$variable4 -n profile-site
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
kubectl apply -f deployment.yaml
echo
for ((i=3; i>=1; i--)); do
    echo "$i"
    sleep 1
done
echo
if [ $? -eq 0 ]; then
  echo "deployment.yaml applied successfully."
  kubectl get pods -n profile-site
  kubectl describe svc -n profile-site
else
  echo "deployment.yaml failed with exit status $?."
  kubectl get pods -n profile-site
  kubectl describe svc -n profile-site
fi
echo
echo
echo
kubectl config view --minify --flatten > ~/.kube/config
echo
echo ################################################################################################
echo Deployment Complete!!
echo ################################################################################################
