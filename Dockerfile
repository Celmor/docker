FROM	alpine
RUN	apk update && \
	apk upgrade && \
	apk add openssh openvpn squid
CMD	printf "%s\n%s\n" "${user}" "${pass}" > /dev/shm/auth && \
	openvpn --auth-user-pass /dev/shm/auth \
		--config /etc/openvpn/*${country}.ovpn
