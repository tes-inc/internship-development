# インターンシップ開発課題

## Description

## Environments

- Docker v18.03
    - DockerToolboxを利用するため、VirtualBoxを併せて利用
- Ruby 2.4.2
- Ruby on Rails 5.2
- MySQL 5.7

## Installation

### DockerToobox インストール

#### for Mac

https://docs.docker.com/toolbox/toolbox_install_mac/

#### for Windows

https://docs.docker.com/toolbox/toolbox_install_windows/ <br>
ダウンロード後、 `DockerToolbox.exe` を起動。パラメータはすべてデフォルトのままでインストールする。

### Docker Quickstart Terminal 起動

`Docker Quickstart Terminal` を選択してクリックする。<br>

### git clone

    $ git clone git@github.com:tes-inc/internship-development.git
    $ cd internship-development

### Docker machine 起動

    $ docker-machine start default
    $ docker-machine env default
    # 表示された環境変数をコピペ実行

### `docker-compose` 実行 ※環境構築時のみなので不要

    $ docker-compose run web rails new . --force --database=mysql --skip-bundle

### アプリケーション起動

    $ docker-compose up

### データベース作成

    $ docker-compose run web rake db:create
