# 20180430-schoo

このリポジトリは、[GitHubを使ったデプロイ自動化実践 | Schoo](https://schoo.jp/class/5029) のハンズオンに利用するためのものです。

## 使い方

まずはこのリポジトリをcloneしてください。その上で、各ステップごとのソースコードをチェックアウトして、手順どおりに操作してみてください。

また、ローカル環境にCapistranoがインストールされている必要がありますので、そちらも合わせてインストールしてください。

```bash
$ gem install capistrano
$ git clone https://github.com/ttskch/20180430-schoo.git
$ cd 20180430-schoo
```

### [第1回] 1. 静的サイトのデプロイ

このステップのソースコードは [lesson1-1](https://github.com/ttskch/20180430-schoo/tree/lesson1-1) でタグ付けしてあります。

```bash
$ git checkout refs/tags/lesson1-1
$ vi config/deploy.rb              # あなたの環境に合わせて適切に修正してください
$ vi config/deploy/production.rb   # あなたの環境に合わせて適切に修正してください
$ cap production deploy
```

ブラウザで http://あなたのWebサーバー/ にアクセスして、"Hello, Deploy." と表示されれば成功です :+1:

### [第1回] 2. 動的サイトのデプロイ

このステップのソースコードは [lesson1-2](https://github.com/ttskch/20180430-schoo/tree/lesson1-2) でタグ付けしてあります。

```bash
$ git checkout refs/tags/lesson1-2
$ vi config/deploy.rb              # あなたの環境に合わせて適切に修正してください
$ vi config/deploy/production.rb   # あなたの環境に合わせて適切に修正してください
$ cap production deploy
```

ブラウザで http://あなたのWebサーバー/ にアクセスして、"Hello, **Deploy**." （Deployが太字）と表示されれば成功です :+1:
