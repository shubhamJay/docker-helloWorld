FROM node
WORKDIR /var/lib/helloWorld

COPY package*.json ./
RUN ["npm","install"]
COPY ./ ./

CMD [ "npm","run","devStart" ]


FROM node
WORKDIR /var/lib/helloWorld
COPY --from=0 /var/lib/helloWorld/ .

CMD [ "npm","run","start"]

