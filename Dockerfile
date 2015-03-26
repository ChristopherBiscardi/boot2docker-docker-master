FROM boot2docker/boot2docker

ENV COMMIT {commit}

RUN curl https://master.dockerproject.com/linux/386/docker > /rootfs/usr/local/bin/docker

RUN chmod +x /rootfs/usr/local/bin/docker
RUN /make_iso.sh
CMD ["cat", "/boot2docker.iso"]
