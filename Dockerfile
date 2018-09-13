FROM andyshinn/dnsmasq

ENV DNS_FORWARD 8.8.8.8

ENTRYPOINT []
CMD [ "sh", "-c", "dnsmasq -k -A /test/127.0.0.1 -S $DNS_FORWARD --log-facility=- --log-queries" ]
