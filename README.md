# Training Laravel9

## 開発環境
- Windows10 pro
- Docker for Windows
- PHP Storm

## 構成
- PHP 8.1.4
- Laravel 9.0
- Nginx 1.21
- MySQL 8.0

## ディレクトリ構成
```
training-laravel9
└ docker/
    ├  mysql/
    |       ├ conf.d/
    |       |         └ my.cnf
    |       └ Dockerfile
    ├ nginx/
    |       ├ Dockerfile
    |       └ nginx.conf
    ├ php/
    |       └ Dockerfile
    ├ laravel/
    |       ├ app/
    |       |         └ my.cnf
    |       ├ config/
    |       ├ database/
    |       ├ public/
    |       ├ resource/
    |       ├ route/
    |       ├ .env.example
    |       ├ artisan
    |       ├ composer.json
    |       ├ conposer.lock
    |       ├ package.json
    |       ├ server.php
    |       └ webpack.min.js
    └ docker-compose.yml 

```

## 開発環境構築
1. `init.sh`を実行し、開発環境の初期化を行う
2. `http://localhost`にアクセスし、status code = 200となるレスポンスが返却されることを確認する

## 本番環境構築
1. dockerをインストール
2. gitから当リポジトリのdevelopブランチをclone
3. init_prd.shコマンドを実行する
4. 初回インストール時は以下のコマンドを実行する。
    ```
    docker-compose run --rm docker-compose healthstock_php-fpm php artisan db:seed
    ```