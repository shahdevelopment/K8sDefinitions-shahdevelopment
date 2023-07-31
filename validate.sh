#!/bin/bash
echo ################################################################################################
echo ################################################################################################
echo
echo
cleanup_and_exit() {
  echo "Purging environment variables..."
  unset PRIVATE_KEY_BASE64
  unset CERTIFICATE_BASE64
  unset base64_encoded_username
  unset base64_encoded_password
  unset variable1
  unset variable2
  unset variable3
  unset variable4
  unset variable5
  exit 0
}
echo
echo ################################################################################################
echo ################################################################################################
echo
echo "Starting the script..."
echo ################################################################################################
echo
while true; do
  # Your loop code here
  read -p "Enter a value (type 'clean' to cleanup variables | type 'ingress-nginx' to run validation of namespace ingress-nginx | type 'profile-site' to run validation of profile-site namespace ): " input
  case "$input" in
    "clean")
      # Call the cleanup_and_exit function to exit the script
      cleanup_and_exit
      ;;
    "ingress-nginx")
        echo ################################################################################################
        echo ################################################################################################
        echo ################################################################################################
        echo Ingress Validation:
        echo ################################################################################################
        kubectl get all -n ingress-nginx    
        sleep 5

      ;;
    "profile-site")
        echo
        echo
        echo
        echo ################################################################################################
        echo ################################################################################################
        echo ################################################################################################
        echo Profile-site Validation:
        echo ################################################################################################
        kubectl get all -n profile-site
        echo
        echo
        echo
        sleep 5

      ;;
    *)
      echo "Invalid input. Try again."
      ;;
  esac
done
echo
echo ################################################################################################
echo ################################################################################################
