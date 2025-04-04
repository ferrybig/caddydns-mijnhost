# Mijn.host module for Caddy

This package contains a DNS provider module for [Caddy](https://github.com/caddyserver/caddy). It can be used to manage DNS records with [mijn.host](https://mijn.host).

## Caddy module name

```
dns.providers.mijnhost
```

## Config examples

To use this module for the ACME DNS challenge, [configure the ACME issuer in your Caddy JSON](https://caddyserver.com/docs/json/apps/tls/automation/policies/issuer/acme/) like so:

```json
{
  "module": "acme",
  "challenges": {
    "dns": {
      "provider": {
        "name": "mijnhost",
        "api_key": "YOUR_MIJNHOST_API_KEY"
      }
    }
  }
}
```

or with the Caddyfile:

```
# globally
{
	acme_dns mijnhost <api-key>
}
```

```
# one site
tls {
	dns mijnhost <api-key>
}
```
