# As per https://discuss.daml.com/t/trying-to-run-the-ex-secure-daml-infra-refapp-getting-password-authentication-failed-error-for-postgresql/2412
# Use together with run-sandbox-simple.sh 

docker run --name daml-postgres -d -p 5432:5432 \
 -e POSTGRES_PASSWORD=“ChangeDefaultPassword!” \
 -e POSTGRES_HOST_AUTH_METHOD=trust \
 -v “$(pwd)/certs/server/certs/db.$DOMAIN.cert.pem:/var/lib/postgresql/db.$DOMAIN.cert.pem:ro" \
 -v "(pwd)/certs/server/private/db.$DOMAIN.key.pem:/var/lib/postgresql/db.$DOMAIN.key.pem:ro" \
 -v "(pwd)/certs/intermediate/certs/ca-chain.cert.pem:/var/lib/postgresql/ca-chain.crt:ro” \
 postgres:12 \
 -c ssl=on \
 -c ssl_cert_file=/var/lib/postgresql/db.$DOMAIN.cert.pem \
 -c ssl_key_file=/var/lib/postgresql/db.$DOMAIN.key.pem \
 -c ssl_ca_file=/var/lib/postgresql/ca-chain.crt \
 -c ssl_min_protocol_version=“TLSv1.2” \
 -c ssl_ciphers=“HIGH:!MEDIUM:+3DES:!aNULL”
