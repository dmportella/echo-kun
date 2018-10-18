FROM node:8.12.0-alpine

ADD index.js index.js

EXPOSE 8080

ENTRYPOINT [ "node", "index.js"]