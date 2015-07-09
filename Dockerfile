FROM zalando/openjdk:8u45-b14-2

MAINTAINER Zalando SE

RUN apt-get update && apt-get install -y \
    unzip \
    wget

 
# Prepare openidm
RUN cd /tmp && \
    wget -q https://github.com/OpenRock/OpenIDM/releases/download/3.1.0/openidm-3.1.0.zip && \
    unzip -q openidm-3.1.0.zip -d /opt && \
    rm ./openidm-3.1.0.zip

EXPOSE 8443

# Start OpenIDM
ENTRYPOINT ./opt/openidm/startup.sh
