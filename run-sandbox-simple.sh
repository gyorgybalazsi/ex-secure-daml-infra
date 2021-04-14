# As per https://discuss.daml.com/t/trying-to-run-the-ex-secure-daml-infra-refapp-getting-password-authentication-failed-error-for-postgresql/2412
# Use together with run-docker-simple.sh

java -jar daml-on-sql-1.10.0.jar \
 ./dist/ex-secure-daml-infra-0.0.1.dar \
 –client-auth $CLIENT_CERT_AUTH_PARAM \
 –sql-backend-jdbcurl “jdbc:postgresql://localhost/postgres?user=postgres&password=ChangeDefaultPassword!&ssl=on” \
 $SIGNER_URL \
 –log-level DEBUG \
 –ledgerid LEDGER_ID \ 
 --cacrt "(pwd)/certs/intermediate/certs/ca-chain.cert.pem" \ 
 –pem “$(pwd)/certs/server/private/ledger.DOMAIN.key.pem" \ 
 --crt "(pwd)/certs/server/certs/ledger-chain.$DOMAIN.cert.pem”