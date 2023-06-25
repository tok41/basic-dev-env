# base env

個人的な基本の開発環境

## 環境構築

### 事前準備(推奨)

- [pyenv](https://github.com/pyenv/pyenv#installation)の導入
- pyenvを通して適当なバージョンのpythonをインストールしておく

### 環境構築手順

venvの環境を作る。`kasou`は仮想環境の名称なので、なんでも良い。

```bash
python -m venv kasou
```

仮想環境を有効化

```bash
source kasou/bin/activate
```

仮想環境で必要なパッケージのインストール

```bash
python -m pip install -r requirements.txt 
```

jupyter labの起動。
直接jupyterコマンドを実行しても良いが、下記のシェルスクリプトでjupyterlabのポートを環境変数`JUPYTER_PORT`から取得して設定する。

```bash
bash bin/run_jupyter.sh
JUPYTER_PORT=48888 bash bin/run_jupyter.sh
```

仮想環境の終了

```bash
deactivate
```
