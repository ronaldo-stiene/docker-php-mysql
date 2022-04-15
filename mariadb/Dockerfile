FROM mariadb:10.4
WORKDIR "/srv"

# Add user
RUN adduser --disabled-password --gecos '' admin \
    && adduser admin root

# Define user password
RUN echo 'admin:dockeraccess' | chpasswd -m

# Install ssh connection
RUN apt-get update \
    && apt-get -y install \
        ssh \ 
        sshpass

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
