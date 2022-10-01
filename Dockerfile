FROM node:16-alpine



WORKDIR /app

COPY ./experiments ./experiments
COPY ./data ./data

WORKDIR /app/experiments

RUN npm i

ENTRYPOINT [ "node", "app.js", "tangrams_sequential" ]