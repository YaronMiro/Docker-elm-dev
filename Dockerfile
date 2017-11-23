FROM node:7.10.1

MAINTAINER Yaron Miro <yaron.miro@gmail.com>

# The Node app root path.
ENV APP_ROOT_PATH /app

# Install Elm packages.
RUN npm install -g elm@0.18.0
RUN npm install -g elm-test@0.18.0

# Add a default elm webpack starter app.
RUN git clone https://github.com/elm-community/elm-webpack-starter.git $APP_ROOT_PATH

WORKDIR $APP_ROOT_PATH

RUN npm set progress=false \
    && npm install && \
    npm cache clean --force

# Adding a custom npm script to run the dev server so it's exposed to the
# host machine.
RUN npm install -g npm-add-script
  RUN npmAddScript -k start-dev -v "webpack-dev-server --hot --inline --host 0.0.0.0 --port 3000"

CMD ["npm", "run", "start-dev"]
