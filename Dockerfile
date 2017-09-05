# Pull base image.
FROM nginx
MAINTAINER Alex <alexfile123@gmail.com>

# Install general Dependencies
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -yqq \
      curl \
      apt-utils \
      gnupg2 \
      ca-certificates \
      git \
    && rm -rf /var/lib/apt/lists/*

# Install node.js
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -yqq \
      nodejs \
    && rm -rf /var/lib/apt/lists/*

## NPM, GULP 
# Global install gulp
RUN npm install -g gulp

# Define working directory.
WORKDIR /workspace

ADD config/nginx.conf /etc/nginx/conf.d/default.conf
ADD script/install.sh /script/install.sh

ENTRYPOINT ["/script/install.sh"]

EXPOSE 80
