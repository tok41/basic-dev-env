# base env

個人的な基本の開発環境

## 環境構築

- clone this repository
- build & run container
  - Dockerfileをいじってなけれはbuildオプションは外してもOK

```bash
docker-compose up --build
```

jupyterlabが自動で立ち上がるので、docker-composeに設定するport番号(8066)で繋がる。

<http://localhost:8066>

- attach container

```bash
docker-compose exec tok-base bash
```

- down & remove container

```bash
docker-compose down
```

## デバッグ

### コンテナに入って作業する場合

VSCodeのデバッガを起動（`Python: Current File` を利用）。

### コンテナに入らず、デバッガをローカルからアタッチさせる場合

以下のコマンドを参考に `debugpy` を利用してデバッガからのアタッチを待つ（`Python: Remote Attach` を利用）。

```bash
poetry run python -m debugpy --listen 0.0.0.0:5678 --wait-for-client src/train.py
```

pytestを走らせる場合は以下

```bash
poetry run python -m debugpy --listen 0.0.0.0:5678 --wait-for-client -m pytest test/test_sample.py -s -k  test_sample
```

### jupyterlab からアタッチさせる場合（下記手順）

デバッガをjupyterlabにアタッチさせる（`Python: Remote Attach` を利用）。
main関数を書いたりしなくて良いのでモジュールの開発とでデバッグが容易になるかも。

- jupyter lab からデバッグ用カーネル（Python3 Debug）でnotebook作成
- VSCodeでRemote Attachでデバッガ起動（接続待ちになる）
- jupyterlabでセル実行 → ブレークポイントで止まる
