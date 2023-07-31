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
