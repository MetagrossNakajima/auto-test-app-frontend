# ベースイメージを指定
FROM node:18.18-slim

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . .

# node.js の環境変数を定義する
ENV NODE_ENV=development

# npmをinstall
RUN npm install

# ポート3000番を開放する
EXPOSE 3000