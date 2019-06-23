FROM marvinmarvin/docker-k8s-rclone
RUN apt-get update -y && \
    apt-get install wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN /bin/wget -q https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py -O /root/speedtest && \
    /bin/chmod +x /root/speedtest
