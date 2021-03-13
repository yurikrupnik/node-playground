FROM node:8.17.0-alpine

# Set a working directory
WORKDIR /usr/src/app

COPY ./build/package.json .
COPY ./build/yarn.lock .

# Install Node.js dependencies
RUN npm install --production --no-progress

# Copy application files
COPY ./build .

EXPOSE 80

CMD [ "node", "server.js" ]
