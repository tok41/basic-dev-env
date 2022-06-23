#!/usr/bin/env bash

poetry install
exec poetry run jupyter lab --allow-root --NotebookApp.token='' --ip=0.0.0.0 --port 8888 --no-browser --autoreload
