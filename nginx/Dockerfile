FROM nginx:1.19
WORKDIR "/srv"

# Install connection utils
RUN apt-get update \
    && apt-get -y install \
        net-tools \
        iputils-ping \
        iproute2 \
        dnsutils \
        traceroute

# Install other stuff
RUN apt-get update \
    && apt-get -y install \
        apt-utils \
        vim
    
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
