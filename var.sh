#!/bin/bash
echo ################################################################################################
echo ################################################################################################
echo
echo
# Set variables with multiline values
variable1=$(cat <<EOF
-----BEGIN PRIVATE KEY-----
MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgXwwxckQdmGDx1cRy
kP+CIrkKGimUUZPwI9zwB6hJWB6hRANCAASARlGCl1QlJivmetnIPIzCsserU4EH
zUA94yn2iHZOYgkXPNJYeU3X7CsVdtl9dnxmgRFMB7bRmbC+epMGQLjg
-----END PRIVATE KEY-----
EOF
)
echo
echo ################################################################################################
echo ################################################################################################
echo
variable2=$(cat <<EOF
-----BEGIN CERTIFICATE-----
MIIELzCCAxegAwIBAgISBDgfEmNNRDeTxUgsAO+rsKEHMA0GCSqGSIb3DQEBCwUA
MDIxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MQswCQYDVQQD
EwJSMzAeFw0yMzA3MjUxNDU0NDRaFw0yMzEwMjMxNDU0NDNaMCExHzAdBgNVBAMM
Fiouc2hhaGRldmVsb3BtZW50LnRlY2gwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNC
AASARlGCl1QlJivmetnIPIzCsserU4EHzUA94yn2iHZOYgkXPNJYeU3X7CsVdtl9
dnxmgRFMB7bRmbC+epMGQLjgo4ICGTCCAhUwDgYDVR0PAQH/BAQDAgeAMB0GA1Ud
JQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAAMB0GA1UdDgQW
BBSd9F8am8K4AHYHGKVmBcPIBGRNjjAfBgNVHSMEGDAWgBQULrMXt1hWy65QCUDm
H6+dixTCxjBVBggrBgEFBQcBAQRJMEcwIQYIKwYBBQUHMAGGFWh0dHA6Ly9yMy5v
LmxlbmNyLm9yZzAiBggrBgEFBQcwAoYWaHR0cDovL3IzLmkubGVuY3Iub3JnLzAh
BgNVHREEGjAYghYqLnNoYWhkZXZlbG9wbWVudC50ZWNoMBMGA1UdIAQMMAowCAYG
Z4EMAQIBMIIBBQYKKwYBBAHWeQIEAgSB9gSB8wDxAHcAtz77JN+cTbp18jnFulj0
bF38Qs96nzXEnh0JgSXttJkAAAGJjcKNFAAABAMASDBGAiEAi6Q2q3lytYrXzSNc
xVprHpNpUMX1S1nc1MRvpqGzMVkCIQDBJFSZrQLvLjX5TS0XOJAVixclTnBPMDFa
zOEOVYkwMAB2AOg+0No+9QY1MudXKLyJa8kD08vREWvs62nhd31tBr1uAAABiY3C
jRwAAAQDAEcwRQIgCtgqHw2yHtiU9rYkuz2L+ec7P+MY0hOXfxqvAQVag/gCIQDz
9i2QbSUf72xylASNkj2QTlyhIYSJHdpy6iOiSACwRjANBgkqhkiG9w0BAQsFAAOC
AQEAgxNs6pPiL9v8xNFLvJEO3jnQ8OCkCf3PNQvmTzBQaz4FRtGPyKTIpVXobUk7
8M39XgStBKdS76DaZ5hAbMOBBIkDRXrp457rw/U7HnfHOwP5L/q6nBwM8ieKfpag
+iNZ1enQN1edQQCF8X8MCr2LDTlQt/6yczLNjhy9zS+tHW6s6LwvffLQ3vs3ibq2
m+5binWA50KaIhG6+AkGVUv89Nt2bOMc8+U+j2bd4dZR8gX2c8xu5QYKR2Hpjz/H
asyZrbnA96HNVx6BBLjPZpTLeGjvQWQQgrcFe40HDnXh79/Q0S6Lrli/NbWYhMnh
9RyyyTC9jTT25KDXzE7gekcctw==
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
MIIFFjCCAv6gAwIBAgIRAJErCErPDBinU/bWLiWnX1owDQYJKoZIhvcNAQELBQAw
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMjAwOTA0MDAwMDAw
WhcNMjUwOTE1MTYwMDAwWjAyMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNTGV0J3Mg
RW5jcnlwdDELMAkGA1UEAxMCUjMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQC7AhUozPaglNMPEuyNVZLD+ILxmaZ6QoinXSaqtSu5xUyxr45r+XXIo9cP
R5QUVTVXjJ6oojkZ9YI8QqlObvU7wy7bjcCwXPNZOOftz2nwWgsbvsCUJCWH+jdx
sxPnHKzhm+/b5DtFUkWWqcFTzjTIUu61ru2P3mBw4qVUq7ZtDpelQDRrK9O8Zutm
NHz6a4uPVymZ+DAXXbpyb/uBxa3Shlg9F8fnCbvxK/eG3MHacV3URuPMrSXBiLxg
Z3Vms/EY96Jc5lP/Ooi2R6X/ExjqmAl3P51T+c8B5fWmcBcUr2Ok/5mzk53cU6cG
/kiFHaFpriV1uxPMUgP17VGhi9sVAgMBAAGjggEIMIIBBDAOBgNVHQ8BAf8EBAMC
AYYwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMBIGA1UdEwEB/wQIMAYB
Af8CAQAwHQYDVR0OBBYEFBQusxe3WFbLrlAJQOYfr52LFMLGMB8GA1UdIwQYMBaA
FHm0WeZ7tuXkAXOACIjIGlj26ZtuMDIGCCsGAQUFBwEBBCYwJDAiBggrBgEFBQcw
AoYWaHR0cDovL3gxLmkubGVuY3Iub3JnLzAnBgNVHR8EIDAeMBygGqAYhhZodHRw
Oi8veDEuYy5sZW5jci5vcmcvMCIGA1UdIAQbMBkwCAYGZ4EMAQIBMA0GCysGAQQB
gt8TAQEBMA0GCSqGSIb3DQEBCwUAA4ICAQCFyk5HPqP3hUSFvNVneLKYY611TR6W
PTNlclQtgaDqw+34IL9fzLdwALduO/ZelN7kIJ+m74uyA+eitRY8kc607TkC53wl
ikfmZW4/RvTZ8M6UK+5UzhK8jCdLuMGYL6KvzXGRSgi3yLgjewQtCPkIVz6D2QQz
CkcheAmCJ8MqyJu5zlzyZMjAvnnAT45tRAxekrsu94sQ4egdRCnbWSDtY7kh+BIm
lJNXoB1lBMEKIq4QDUOXoRgffuDghje1WrG9ML+Hbisq/yFOGwXD9RiX8F6sw6W4
avAuvDszue5L3sz85K+EC4Y/wFVDNvZo4TYXao6Z0f+lQKc0t8DQYzk1OXVu8rp2
yJMC6alLbBfODALZvYH7n7do1AZls4I9d1P4jnkDrQoxB3UqQ9hVl3LEKQ73xF1O
yK5GhDDX8oVfGKF5u+decIsH4YaTw7mP3GFxJSqv3+0lUFJoi5Lc5da149p90Ids
hCExroL1+7mryIkXPeFM5TgO9r0rvZaBFOvV2z0gp35Z0+L4WPlbuEjN/lxPFin+
HlUjr8gRsI3qfJOQFy/9rKIJR0Y/8Omwt/8oTWgy1mdeHmmjk7j1nYsvC9JSQ6Zv
MldlTTKB3zhThV1+XWYp6rjd5JW1zbVWEkLNxE7GJThEUG3szgBVGP7pSWTUTsqX
nLRbwHOoq7hHwg==
-----END CERTIFICATE-----
-----BEGIN CERTIFICATE-----
MIIFYDCCBEigAwIBAgIQQAF3ITfU6UK47naqPGQKtzANBgkqhkiG9w0BAQsFADA/
MSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT
DkRTVCBSb290IENBIFgzMB4XDTIxMDEyMDE5MTQwM1oXDTI0MDkzMDE4MTQwM1ow
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwggIiMA0GCSqGSIb3DQEB
AQUAA4ICDwAwggIKAoICAQCt6CRz9BQ385ueK1coHIe+3LffOJCMbjzmV6B493XC
ov71am72AE8o295ohmxEk7axY/0UEmu/H9LqMZshftEzPLpI9d1537O4/xLxIZpL
wYqGcWlKZmZsj348cL+tKSIG8+TA5oCu4kuPt5l+lAOf00eXfJlII1PoOK5PCm+D
LtFJV4yAdLbaL9A4jXsDcCEbdfIwPPqPrt3aY6vrFk/CjhFLfs8L6P+1dy70sntK
4EwSJQxwjQMpoOFTJOwT2e4ZvxCzSow/iaNhUd6shweU9GNx7C7ib1uYgeGJXDR5
bHbvO5BieebbpJovJsXQEOEO3tkQjhb7t/eo98flAgeYjzYIlefiN5YNNnWe+w5y
sR2bvAP5SQXYgd0FtCrWQemsAXaVCg/Y39W9Eh81LygXbNKYwagJZHduRze6zqxZ
Xmidf3LWicUGQSk+WT7dJvUkyRGnWqNMQB9GoZm1pzpRboY7nn1ypxIFeFntPlF4
FQsDj43QLwWyPntKHEtzBRL8xurgUBN8Q5N0s8p0544fAQjQMNRbcTa0B7rBMDBc
SLeCO5imfWCKoqMpgsy6vYMEG6KDA0Gh1gXxG8K28Kh8hjtGqEgqiNx2mna/H2ql
PRmP6zjzZN7IKw0KKP/32+IVQtQi0Cdd4Xn+GOdwiK1O5tmLOsbdJ1Fu/7xk9TND
TwIDAQABo4IBRjCCAUIwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYw
SwYIKwYBBQUHAQEEPzA9MDsGCCsGAQUFBzAChi9odHRwOi8vYXBwcy5pZGVudHJ1
c3QuY29tL3Jvb3RzL2RzdHJvb3RjYXgzLnA3YzAfBgNVHSMEGDAWgBTEp7Gkeyxx
+tvhS5B1/8QVYIWJEDBUBgNVHSAETTBLMAgGBmeBDAECATA/BgsrBgEEAYLfEwEB
ATAwMC4GCCsGAQUFBwIBFiJodHRwOi8vY3BzLnJvb3QteDEubGV0c2VuY3J5cHQu
b3JnMDwGA1UdHwQ1MDMwMaAvoC2GK2h0dHA6Ly9jcmwuaWRlbnRydXN0LmNvbS9E
U1RST09UQ0FYM0NSTC5jcmwwHQYDVR0OBBYEFHm0WeZ7tuXkAXOACIjIGlj26Ztu
MA0GCSqGSIb3DQEBCwUAA4IBAQAKcwBslm7/DlLQrt2M51oGrS+o44+/yQoDFVDC
5WxCu2+b9LRPwkSICHXM6webFGJueN7sJ7o5XPWioW5WlHAQU7G75K/QosMrAdSW
9MUgNTP52GE24HGNtLi1qoJFlcDyqSMo59ahy2cI2qBDLKobkx/J3vWraV0T9VuG
WCLKTVXkcGdtwlfFRjlBz4pYg1htmf5X6DYO8A4jqv2Il9DjXA6USbW1FzXSLr9O
he8Y4IWS6wY7bCkjCWDcRQJMEhg76fsO3txE+FiYruq9RUWhiF1myv4Q6W+CyBFC
Dfvp7OOGAN6dEOM4+qR9sdjoSYKEBpsr6GtPAQw4dy753ec5
-----END CERTIFICATE-----
EOF
)
echo
echo ################################################################################################
echo ################################################################################################
echo
variable3=shahdevelopment
echo
echo ################################################################################################
echo ################################################################################################
echo
variable4=dckr_pat_qDm0fi1Uw9zmbQkAdAxtLezmmkE
echo
echo ################################################################################################
echo ################################################################################################
echo
variable5=shahjehan737@gmail.com
echo
echo ################################################################################################
echo ################################################################################################
echo
PRIVATE_KEY_BASE64=$(echo -n "$variable1" | base64)
CERTIFICATE_BASE64=$(echo -n "$variable2" | base64)
base64_encoded_username=$(echo -n "$variable3" | base64)
base64_encoded_password=$(echo -n "$variable4" | base64)
echo
echo ################################################################################################
echo ################################################################################################
echo
# Export the variables to make them available in the current shell environment
export PRIVATE_KEY_BASE64
export CERTIFICATE_BASE64
export base64_encoded_username
export base64_encoded_password


export variable1 # privkey
export variable2 # cert
export variable3
export variable4
export variable5
#kubectl create secret tls k8.shahdevelopment.tech --cert=$variable2 --key=$variable1 -n profile-site
#kubectl create secret docker-registry secret-tiger-docker --docker-email=$variable5 --docker-username=$variable3 --docker-password=$variable4 -n profile-site
echo
echo $PRIVATE_KEY_BASE64
echo
echo $CERTIFICATE_BASE64
echo
echo $base64_encoded_username
echo
echo $base64_encoded_password
echo
echo ################################################################################################
echo Export Completed!
echo ################################################################################################

