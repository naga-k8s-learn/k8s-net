# ベースイメージを選択
FROM node:18-alpine

# アプリケーションのディレクトリを作成
WORKDIR /usr/src/app

# アプリケーションの依存関係をコピーしてインストール
COPY package*.json ./
RUN npm install

# アプリケーションのソースをコピー
COPY . .

# アプリケーションがリッスンするポートを公開
EXPOSE 3000

# アプリケーションを実行
CMD [ "node", "app.js" ]