FROM node:8

MAINTAINER SMART COSMOS Platform Core Team

ENV NPM_CONFIG_LOGLEVEL info

# Webpack giving us a run for our money with non-global installs.
RUN yarn global add webpack eslint \
        eslint-plugin-babel eslint-plugin-import \
        eslint-config-airbnb eslint-config-airbnb-base \
        eslint-import-resolver-node eslint-import-resolver-webpack \
        eslint-plugin-jsx-a11y eslint-plugin-react \
        babel-eslint
