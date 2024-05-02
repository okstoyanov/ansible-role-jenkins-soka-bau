## Info:
openssl genrsa -out ca.key 4096
openssl req -new -x509 -days 3650 -key ca.key -out ca.crt
openssl req -newkey rsa:4096 -nodes -keyout jenkins_02.key -out jenkins_02.csr
openssl x509 -req -extfile <(printf "subjectAltName=DNS:jenkins,DNS:sl-023113.sol.labwi.sva.de") -days 3650 -in jenkins_02.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out jenkins_02.crt
openssl pkcs12 -export -out jenkins_02.p12 -passout 'pass:password' -inkey jenkins_02.key -in jenkins_02.crt -certfile ca.crt -name sl-023113.sol.labwi.sva.de