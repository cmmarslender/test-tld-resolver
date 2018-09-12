# *.test TLD Resolver

Very simple dnsmasq based docker container that will resolve any DNS query with a TLD of .test to 127.0.0.1

## Usage
1. Start the docker container: `docker run -d -p 53:53/udp --cap-add=NET_ADMIN cmmarslender/testtldresolver:latest`
2. Update your system's primary DNS server to `127.0.0.1`. It is recommended you add a secondary DNS server in case this docker container becomes unavailable.
