# Usage: docker run -d --cap-add NET_ADMIN --device /dev/net/tun:/dev/net/tun -p 3128 openvpn
FROM debian
WORKDIR /autovpn
RUN apt-get update -qq \
	&& apt-get install -qqy golang-go git openvpn \
	&& apt-get clean
	&& git clone https://github.com/adtac/autovpn . \
	&& go build autovpn.go
ENTRYPOINT /autovpn/autovpn
