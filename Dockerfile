FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.lw2ei.mongodb.net
ENV MONGODB_USERNAME rostislav
ENV MONGODB_PASSWORD AkcTghD9GqRtfY60

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]