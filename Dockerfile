FROM node:20.0.0-alpine3.17

COPY ./ /var/chatgpt-api

WORKDIR /var/chatgpt-api
RUN npm ci --no-color --quiet

ENV API_HOST=0.0.0.0

EXPOSE 3000

ENTRYPOINT npm start