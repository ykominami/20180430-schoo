lock "~> 3.10.2"

set :repo_url, "https://github.com/ttskch/20180430-schoo.git"

#
# あなたのWebサーバーの環境に合わせてデプロイ先ディレクトリパスを設定してください
#
set :deploy_to, "/var/www/schoo"

#
# デプロイすべきソースコードのブランチ（タグ）を指定しています
# masterブランチをデプロイする場合は不要です
#
set :branch, "refs/tags/lesson1-1"
