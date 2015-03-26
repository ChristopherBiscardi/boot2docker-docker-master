FROM boot2docker/boot2docker

RUN curl https://test.docker.com/builds/Linux/x86_64/docker-1.6.0-rc2 > /rootfs/usr/local/bin/docker

RUN chmod +x /rootfs/usr/local/bin/docker
RUN /make_iso.sh
CMD ["cat", "/boot2docker.iso"]
