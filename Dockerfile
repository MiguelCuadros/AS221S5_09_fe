FROM node:20

RUN mkdir -p /app

WORKDIR /app

COPY package*.json /app

RUN npm install

RUN npm install -g @angular/cli@17.3.7

COPY . /app

RUN npm run build --prod

EXPOSE 4200

ENTRYPOINT [ "npm", "start" ]

