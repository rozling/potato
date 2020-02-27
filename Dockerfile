FROM arm32v7/node

RUN mkdir -p /opt/app
WORKDIR /opt/app

COPY package.json /opt/app/
RUN npm install --production

COPY . /opt/app
CMD ["npm", "start"];
