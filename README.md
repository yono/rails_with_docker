# Rails with Docker

Docker 環境で Rails アプリを開発するときの構成について検討するリポジトリ

## Requirement

* macOS
* Docker Desktop

## Usage

Rails Server の起動

```bash
$ docker-compose up
```

RSpec の実行
※ `docker-compose up` が起動している前提

```bash
$ docker-compose exec bin/rspec
```

System Spec が実行されている様子を見る
※ パスワードは `secret`

```bash
$ open vnc://localhost:5900
```
