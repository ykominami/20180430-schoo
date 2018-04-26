#
# 前提として、デプロイ先サーバーにSSH鍵でログインできるように準備しておく必要があります
#
# ホスト名、ユーザー名はあなたのWebサーバーの環境に合わせて設定してください
# また、SSH鍵のパスがデフォルトと異なる場合は、適宜変更してください
#
server "ホスト名", user: "ユーザー名", ssh_options: {
    #
    # SSH鍵のパスはCircleCIの実行環境が指定してくれているので指定しない
    # （.circleci/config.ymlでadd_ssh_keysステップを実行しているので、実行環境内の~/.ssh/configで対象ホストとSSH鍵のパスの設定がされている状態になっている）
    #
    # keys: %w(~/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey)
}
