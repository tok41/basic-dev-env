# base env

個人的な基本の開発環境

## 環境構築

- clone this repository
- build & run container
  - Dockerfileをいじってなけれはbuildオプションは外してもOK

```bash
docker-compose up --build
docker-compose exec tok-base bash
```

- install packages

```bash
poetry install
```
