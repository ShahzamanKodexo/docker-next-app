FROM node:latest

WORKDIR /app

COPY package.json package*.json ./

RUN yarn install --ignore-scripts

COPY . .

RUN yarn run build

EXPOSE 3000

CMD ["yarn", "run","start"]
