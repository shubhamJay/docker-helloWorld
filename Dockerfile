FROM node
WORKDIR /var/lib/helloWorld

EXPOSE 3000
COPY package*.json ./
RUN ["npm","install"]
COPY ./ ./

CMD [ "npm","run","devStart" ]


FROM node
WORKDIR /var/lib/helloWorld

EXPOSE 3000
COPY --from=0 /var/lib/helloWorld/ .

CMD [ "npm","run","start"]

