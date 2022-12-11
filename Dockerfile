FROM node:18-alpine
WORKDIR /usr/src
COPY package*.json ./
COPY pnpm-lock.yaml ./
RUN npm install -g pnpm
RUN pnpm install
COPY . .
RUN pnpm run build
EXPOSE 3000
CMD [ "pnpm", "start" ]