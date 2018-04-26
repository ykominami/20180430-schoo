# 20180430-schoo

このリポジトリは、[GitHubを使ったデプロイ自動化実践 | Schoo](https://schoo.jp/class/5029) のハンズオンに利用するためのものです。

## 使い方

### 【第1回】の受講者さんへ

このリポジトリは、ハンズオンの最終的な実装例としてご利用いただけます。

完成版のソースコードを見たいだけの方は、

* [index.htmlをデプロイするだけの例](https://github.com/ttskch/20180430-schoo/tree/lesson1-1)
* [composer installが必要なアプリケーションをデプロイする例](https://github.com/ttskch/20180430-schoo/tree/lesson1-2)

からご覧ください。

実際にデプロイを実行してみたい方は、まずはこのリポジトリをcloneしてください。

```bash
$ git clone https://github.com/ttskch/20180430-schoo.git
$ cd 20180430-schoo
```

また、ローカル環境にCapistranoがインストールされている必要がありますので、そちらも合わせてインストールしてください。

```bash
$ gem install capistrano
```

#### 静的サイトのデプロイ

**index.htmlをデプロイするだけの例** は、[lesson1-1](https://github.com/ttskch/20180430-schoo/tree/lesson1-1) でタグ付けしてあります。

タグをチェックアウトした上で、`config/deploy.rb` および `config/deploy/production.rb` をあなたの環境に合わせて適切に修正していただくと、実際にデプロイを試すことができます。

```
$ git checkout refs/tags/lesson1-1
$ vi config/deploy.rb              # あなたの環境に合わせて適切に修正してください
$ vi config/deploy/production.rb   # あなたの環境に合わせて適切に修正してください
$ cap production deploy
```

ブラウザで http://あなたのWebサーバー/ にアクセスして、"Hello, Deploy." と表示されれば成功です :+1:

#### 動的サイトのデプロイ

**composer installが必要なアプリケーションをデプロイする例** は、[lesson1-2](https://github.com/ttskch/20180430-schoo/tree/lesson1-2) でタグ付けしてあります。

タグをチェックアウトした上で、`config/deploy.rb` および `config/deploy/production.rb` をあなたの環境に合わせて適切に修正していただくと、実際にデプロイを試すことができます。

```bash
$ git checkout refs/tags/lesson1-2
$ vi config/deploy.rb              # あなたの環境に合わせて適切に修正してください
$ vi config/deploy/production.rb   # あなたの環境に合わせて適切に修正してください
$ cap production deploy
```

ブラウザで http://あなたのWebサーバー/ にアクセスして、"Hello, **Deploy**." （Deployが太字）と表示されれば成功です :+1:

### 【第2回】の受講者さんへ

このリポジトリを **フォーク** していただくことで、あなたのGitHubリポジトリとして、CircleCIと連携できるようになります。

まずはこのリポジトリをフォークして、以下のファイルをあなたの環境に合わせて適切に修正してください。

* [config/deploy.rb](config/deploy.rb)
* [config/deploy/production.rb](config/deploy/production.rb)

さらに、

* [.circleci/config.yml](.circleci/config.yml) の `add_ssh_keys` ステップ

に、あなたがCircleCIに登録したSSH鍵のフィンガープリントを設定してください。（詳細は授業にて説明しています）

上記の修正を施すと、CircleCIによってデプロイできる状態になります。

> 修正する際には、ローカルで修正して `git push` していただいてもよいですが、GitHubのWeb UIで直接編集してmasterにコミットしていただくほうが簡単です :hand:

CircleCIのビルド通過後、ブラウザで http://あなたのWebサーバー/ にアクセスして、"Hello, Deploy via CircleCI." と表示されれば成功です :+1:
