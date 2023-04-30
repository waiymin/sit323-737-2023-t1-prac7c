FROM node:14-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY app.js ./
EXPOSE 8080
CMD [ "node", "app.js" ]
