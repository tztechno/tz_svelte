# Node.jsの最新バージョンを使用
FROM node:latest

# アプリケーションディレクトリを作成
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# Svelteをインストール
RUN npm install

# ソースコードをコピー
COPY . .

# ポートを公開
EXPOSE 5000

# 開発サーバーを起動
CMD ["npm", "run", "dev"]