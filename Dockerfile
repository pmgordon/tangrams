FROM node:16-alpine



WORKDIR /app

COPY ./experiments .

RUN npm i

ENTRYPOINT [ "node", "app.js", "tangrams_sequential" ]