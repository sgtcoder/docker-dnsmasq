FROM almalinux:8-minimal

RUN microdnf upgrade --refresh -y && microdnf install dnsmasq -y

COPY dnsmasq.conf /etc/

VOLUME /dnsmasq.hosts

EXPOSE 53

ENTRYPOINT ["/usr/sbin/dnsmasq", "-d"]

