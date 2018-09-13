# *.test TLD Resolver

Very simple dnsmasq based docker container that will resolve any DNS query with a TLD of .test to 127.0.0.1

## Usage
1. Start the docker container: `docker run --name testtld --restart unless-stopped -d -p 53:53/udp --cap-add=NET_ADMIN cmmarslender/test-tld-resolver:latest`
2. Update your system's primary DNS server to `127.0.0.1`. It is recommended you add a secondary DNS server in case this docker container becomes unavailable.

## Options
By default, any request that is not *.test will be forwarded to Google's 8.8.8.8 DNS server. You can override this with the DNS_FORWARD environment variable. For example: `docker run --name testtld --restart unless-stopped -d -p 53:53/udp --cap-add=NET_ADMIN -e DNS_FORWARD=192.168.1.1 cmmarslender/test-tld-resolver:latest`

