FROM alpine:latest
MAINTAINER admin@actionherojs.com

# WORKDIR /
WORKDIR /actionhero
COPY . /actionhero/

RUN ls -al /actionhero
RUN apk add --update nodejs nodejs-npm git
# RUN git clone https://github.com/actionhero/actionhero.git /actionhero
RUN npm install

CMD ["node", "./bin/actionhero", "start"]
EXPOSE 8080 5000
