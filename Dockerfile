# Fetching the minified node image on apline linux
FROM node:slim


# Setting up the work directory
WORKDIR /srv/app


# Copying all the files in our project
COPY . .

# Installing dependencies
RUN yarn install
RUN yarn build

# Starting our application
CMD [ "node", "dist/app.js" ]
