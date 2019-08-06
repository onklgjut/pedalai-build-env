FROM debian:9
RUN apt-get update \
	&& apt-get -y --no-install-recommends install \
		`true "Generic install packages"` \
		git less make procps vim-nox \
		`true "rpi-root-img-build dependencies"` \
		cpio debootstrap \
		`true "rpi-kernel-build dependencies"` \
		bc bison flex gcc gcc-arm-linux-gnueabihf libc6-dev libncurses-dev libssl-dev make \
		`true "analog-processor dependencies"` \
		avr-libc gcc gcc-avr libgtk-3-dev libx11-dev libxt-dev \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/list/* /usr/share/doc/*
ENTRYPOINT /bin/sleep 31536000
