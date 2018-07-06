# Docker + Rails

## Installation for Mac

### Toobox Install

https://docs.docker.com/toolbox/toolbox_install_mac/

### git clone

このリポジトリ

### Docker machine 起動

    $ docker-machine start default
    $ docker-machine env default
    # 表示された環境変数をコピペ実行

### `docker-compose` 実行 ※環境構築時のみ

    $ docker-compose run web rails new . --force --database=mysql --skip-bundle

### アプリケーション起動

    $ docker-compose up

### データベース作成

    $ docker-compose run web rake db:create
