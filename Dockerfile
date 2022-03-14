FROM vault:1.9.4

RUN mkdir /vault

COPY config.hcl /vault/config.hcl

COPY vault.crt /vault/vault.crt
COPY vault.key /vault/vault.key
COPY ca.crt /vault/vault.ca.crt 

ENTRYPOINT vault server -config=/vault/config.hcl