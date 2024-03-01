## Info:
openssl genrsa -out ca.key 4096
openssl req -new -x509 -days 3650 -key ca.key -out ca.crt
openssl req -newkey rsa:4096 -nodes -keyout jenkins.key -out jenkins.csr
openssl x509 -req -extfile <(printf "subjectAltName=DNS:jenkins,DNS:sl-022427.sol.labwi.sva.de") -days 3650 \
-in jenkins.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out jenkins.crt
openssl pkcs12 -export -out jenkins.p12 \
-passout 'pass:password' -inkey jenkins.key \
-in jenkins.crt -certfile ca.crt -name sl-022427.sol.labwi.sva.de



