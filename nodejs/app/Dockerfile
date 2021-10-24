FROM node:12

ENV PORT 3000

RUN apt-get update

RUN apt-get install nginx openssl -y

RUN service nginx start 

RUN rm /etc/nginx/sites-available/default

COPY default /etc/nginx/sites-available/

RUN mkdir -p /etc/nginx/ssl

COPY wildcard_royalenfield_com.crt /etc/nginx/ssl/

COPY wildcard_royalenfield_com.key /etc/nginx/ssl/

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

#RUN npm run build

EXPOSE 80 443 3000

CMD "npm" "start"
