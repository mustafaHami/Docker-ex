FROM node:lts-alpine as develop-stage

WORKDIR /hello-world

# commande vue à l'intérieur du conteneur
ENV PATH /hello-world/node-modules/.bin:$PATH

COPY hello-world/package.json ./ 

COPY hello-world/package-lock.json ./


RUN npm install 
RUN npm install -g @vue/cli 

COPY hello-world/ ./

EXPOSE 5173

CMD npm run dev