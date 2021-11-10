FROM node:alpine
WORKDIR /app

COPY package.json .
RUN npm install
RUN npm run-script build
COPY . .
CMD [ "npm","run-script","start" ]