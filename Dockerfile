FROM andyshinn/dnsmasq

CMD ["-A", "/test/127.0.0.1", "--log-facility=-"]
