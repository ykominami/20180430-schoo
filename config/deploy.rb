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
set :branch, "refs/tags/lesson1-2"

# composer:installタスクを定義
namespace :composer do
  desc 'composer install'
  task :install do
    on roles(:all) do
      #
      # 前提として、あなたのWebサーバーでcomposerコマンドが使えるようにしておく必要があります
      #
      # sshでログイン中は、デフォルトでログインユーザーのホームディレクトリが作業ディレクトリになっているので
      # デプロイ先ディレクトリに移動してからcomposerコマンドを実行する必要があります
      #
      # release_pathにはreleases/xxxxxxxxxxxxxxの絶対パスが入っています
      # https://github.com/capistrano/capistrano/blob/master/lib/capistrano/dsl/paths.rb をご参照ください
      #
      execute "cd #{release_path}/lesson1/step2 && composer install"
    end
  end
end

# deploy:updatedタスク（フック用タスク）の直後にcomposer:installタスクを実行
after 'deploy:updated', 'composer:install'
