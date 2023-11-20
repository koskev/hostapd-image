FROM debian:bookworm-slim

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y hostapd \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

CMD hostapd /etc/hostapd.conf


