dns_lookup() {
    echo "Enter domain: "
    read domain

    # Function to handle empty results
    dns_query() {
        result=$(dig "$domain" "$1" +short)
        if [ -z "$result" ]; then
            echo "null"
        else
            echo "$result"
        fi
    }

    printf "A Record:\n"; dns_query A
    printf "AAAA Record:\n"; dns_query AAAA
    printf "CNAME Record:\n"; dns_query CNAME
    printf "NS Records:\n"; dns_query NS
    printf "TXT Record for ACME Challenge:\n"; dns_query _acme-challenge TXT
    printf "DNSKEY Record:\n"; dns_query DNSKEY
}
