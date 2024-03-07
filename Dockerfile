FROM node:latest
WORKDIR /apps
COPY package.json ./
COPY index.js ./
COPY node_modules ./
COPY package-lock.json ./
COPY test ./
RUN npm install
CMD ["node", "index.js"]
