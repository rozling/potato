FROM arm32v7/node:13-alpine

RUN mkdir -p /opt/app
WORKDIR /opt/app

RUN apk add --no-cache vim

COPY package.json /opt/app/
RUN npm install --production

COPY . /opt/app
CMD ["npm", "start"];
