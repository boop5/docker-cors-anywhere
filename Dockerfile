FROM node:current-alpine3.21
ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=latest
RUN npm install -g cors-anywhere@$version
COPY server.js .
CMD ["node", "server.js"]

EXPOSE 8080
