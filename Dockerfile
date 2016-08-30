FROM node:6-wheezy

MAINTAINER SMART COSMOS Platform Core Team

ENV NPM_CONFIG_LOGLEVEL info

# Create smartcosmos user
RUN useradd -r -u 1000 -d /opt/smartcosmos smartcosmos

# Create base directory for the jar
RUN mkdir -p /opt/smartcosmos && \
        chown -R smartcosmos /opt/smartcosmos

# Webpack giving us a run for our money with non-global installs.
RUN npm install -g webpack eslint \
        eslint-plugin-babel eslint-plugin-import \
        eslint-config-airbnb eslint-config-airbnb-base \
        eslint-import-resolver-node eslint-import-resolver-webpack \
        eslint-plugin-jsx-a11y eslint-plugin-react \
        babel-eslint

# switch to smartcosmos user
USER smartcosmos
