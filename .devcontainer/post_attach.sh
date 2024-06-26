#!/bin/sh
set -ex
git config --global --add safe.directory $(pwd)
pre-commit install --install-hooks --overwrite
