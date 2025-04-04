module github.com/caddy-dns/mijnhost

go 1.22
replace github.com/zjean/libdns-mijnhost => mijnhost

require (
	github.com/caddyserver/caddy/v2 v2.9.1	
	github.com/zjean/libdns-mijnhost 0.0.1
)
