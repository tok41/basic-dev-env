# PORT設定: 環境変数が空なら58888を設定する
JUPYTER_PORT="${JUPYTER_PORT}"

if [ -z "$JUPYTER_PORT" ]; then
  JUPYTER_PORT="58888"
fi

# jupyter lab 起動
jupyter lab --allow-root \
    --NotebookApp.token='' \
    --ip=0.0.0.0 --port $JUPYTER_PORT \
    --no-browser --autoreload
