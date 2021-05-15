#DockerfileはDockerイメージを構築するための設定ファイル

# 元となるDockerイメージを指定
FROM ubuntu:18.04

# Dockerイメージの構築で実行するコマンド
  #Ubuntuの機能をカットせずに使うための記述
RUN yes | unminimize
  #パッケージの更新
RUN apt-get update
  # ソフトウェアのインストール -yはインストール中に必要なYの返答を自動的に行う
RUN apt-get install -y vim curl tmux
  # Ubuntuを日本語化
RUN locale-gen ja_JP.UTF-8
  # Dockerイメージの構築で環境変数と呼ばれる値を設定するための記述
    # 環境変数 LANG を設定し、Ubuntuを日本語化する
ENV LANG ja_JP.UTF-8
    #環境変数 TZ を設定し、タイムゾーンを日本時間にする
ENV TZ Asia/Tokyo
  # 作業ディレクトリを指定
WORKDIR /linux-study
