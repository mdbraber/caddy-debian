 # Makefile for building packages for Caddy.

.PHONY: debian
debian:
	dpkg-buildpackage -us -uc -b --target-arch amd64
	dh_clean

.PHONY: cp
cp:
	cp /usr/bin/caddy .

.PHONY: clean
clean:
	rm -f caddy
	dh_clean
