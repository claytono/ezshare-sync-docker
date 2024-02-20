FROM debian:12.5-slim

COPY EzShareWifiSDcardDownloader.sh /
RUN chmod +x /EzShareWifiSDcardDownloader.sh

RUN apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/EzShareWifiSDcardDownloader.sh"]
