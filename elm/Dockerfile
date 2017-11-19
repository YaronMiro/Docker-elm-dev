FROM node:7.10.1

MAINTAINER Yaron Miro <yaron.miro@gmail.com>

# Install local server packages.
RUN npm install -g css-loader@0.28.7 \
  elm-webpack-loader@4.4.0 \
  file-loader@1.1.5 \
  style-loader@0.19.0 \
  url-loader@0.6.2 \
  webpack@3.8.1 \
  webpack-dev-server@2.9.4

# Install Elm packages.
RUN npm install -g elm@0.18.0
RUN npm install -g elm-test@0.18.0
