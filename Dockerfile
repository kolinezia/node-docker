FROM node:14-alpine
WORKDIR /node-app

COPY package*.json ./

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

RUN npm install

COPY . ./

ENV PORT 3000
EXPOSE $PORT
CMD ["node", "index.js"]
