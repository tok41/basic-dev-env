# base env

個人的な基本の開発環境（uv版）

## 環境構築

### 事前準備

- [uv](https://docs.astral.sh/uv/)のインストール

```bash
# uvをインストール
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### 環境構築手順

依存関係のインストール

```bash
# 本体の依存関係をインストール
uv sync

# 開発用依存関係も含める場合
uv sync --group dev
```

### 使用方法

#### Jupyter Labの起動

シェルスクリプトでJupyter Labのポートを環境変数`JUPYTER_PORT`から取得して設定できます。

```bash
# デフォルトポート(58888)で起動
bash bin/run_jupyter.sh

# カスタムポートで起動
JUPYTER_PORT=48888 bash bin/run_jupyter.sh
```

#### Pythonスクリプトの実行

```bash
# uv環境でスクリプト実行
uv run python src/sample.py
```

#### テストの実行

```bash
# pytestでテスト実行
uv run pytest test/
```

#### 開発ツールの使用

```bash
# コードフォーマット
uv run black src/ test/

# コード品質チェック
uv run flake8 src/ test/
```

## lockファイルの扱い

このプロジェクトでは `.gitignore` で `uv.lock` をgit管理対象外に設定しています。ロックファイルの管理方針はプロジェクトの特性に応じて異なるため、必要に応じて `.gitignore` を編集して管理対象に変更してください。

## uvの利点

- 高速な依存関係解決とインストール
- Pythonバージョン管理内蔵
- pyproject.tomlによる現代的なプロジェクト管理
- ロックファイル（uv.lock）による再現可能な環境
