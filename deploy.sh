#!/usr/bin/env bash
set -e
cd build
git add .
git commit -m "$(date +'%F %R:%S')" || true
git push origin gh-pages
