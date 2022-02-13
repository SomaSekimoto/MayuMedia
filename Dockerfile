FROM node:16.14.0-alpine


WORKDIR /var/www
COPY ./package.json /var/www/

RUN apk update && npm install

EXPOSE 3000
CMD ["npm", "run", "dev"]