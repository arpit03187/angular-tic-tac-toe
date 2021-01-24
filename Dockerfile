# base image
FROM node:current-alpine

# mkdir
RUN mkdir -p /usr/src/app

COPY . /usr/src/app

# set working directory
WORKDIR /usr/src/app

# install and cache app dependencies
RUN npm install

# start app
CMD ng serve --host 0.0.0.0
