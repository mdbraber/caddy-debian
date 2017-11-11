 # Makefile for building packages for Caddy.

.PHONY: debian
debian:
	dpkg-buildpackage -us -uc -b --target-arch amd64
