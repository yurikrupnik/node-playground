FROM node:8.5.0-alpine

# Set a working directory
WORKDIR /usr/src/app

COPY ./build/package.json .
COPY ./build/yarn.lock .

# Install Node.js dependencies
RUN npm install --production --no-progress

# Copy application files
COPY ./build .

CMD [ "node", "server.js" ]
