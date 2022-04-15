FROM phpdockerio/php74-fpm:latest
WORKDIR "/srv"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

# Install git
RUN apt-get update \
    && apt-get -y install \
        git 

# Install redis
RUN apt-get update \
    && apt-get -y install \
        redis 

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
        vim \
        libcurl3-openssl-dev 

# Install selected extensions
RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        php7.4-memcached \
        php7.4-mysql \
        php7.4-redis \
        php7.4-sqlite3 \
        php7.4-xdebug \
        php7.4-bcmath \
        php7.4-bz2 \
        php7.4-gd \
        php7.4-gmp \
        php7.4-imap \
        php7.4-intl \
        php7.4-soap \
        php7.4-tidy \
        php7.4-xmlrpc \
        php7.4-xsl \
        php7.4-dev \
        php-pear

RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

