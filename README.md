This dns_lookup() function in .zshrc that prompts the user to input a domain and performs various DNS queries for that domain. It uses the dig command to fetch the following DNS records:

A Record: The IPv4 address of the domain.
AAAA Record: The IPv6 address of the domain.
CNAME Record: The canonical name (alias) of the domain.
NS Records: The nameservers for the domain.
TXT Record for ACME Challenge: Specific TXT record used for ACME (often for Let's Encrypt SSL certificate validation).
DNSKEY Record: A DNSSEC-related record used for securing DNS.
If a query returns no result, it will output "null".
