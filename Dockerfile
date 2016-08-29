FROM node:6-wheezy

MAINTAINER SMART COSMOS Platform Core Team

ENV NPM_CONFIG_LOGLEVEL info

# Create smartcosmos user
RUN adduser -S smartcosmos -u 1000

# Create base directory for the jar
RUN mkdir -p /opt/smartcosmos && \
        chown -R smartcosmos /opt/smartcosmos

# switch to smartcosmos user
USER smartcosmos
