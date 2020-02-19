# specify the base image, node: add specific version for it
FROM node:alpine

WORKDIR /usr/app

# install some dependency
COPY ./package.json ./
RUN npm install
COPY ./ ./

# default command
CMD ["npm", "start"]