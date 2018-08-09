#!/usr/bin/env bash
set -e
d=$(date +%F)
fp="src/$d.md"
template=$(cat << EOF
---
title: 日報 $d
---

|||
|:-|:-:|

## 日課

- [ ] 読書
	+ [ ] 代数学2　環と体とガロア理論
	+ [ ] ルベーグ積分　テレンスタオ
	+ [ ] 一般コホモロジー
- [ ] アプリ
- [ ] 研究
	+ [ ] 論文

EOF
)
if [ -f "$fp" ]; then
  echo "file already exists at $fp"
  exit 1
else
  echo "creating entry at $fp"
  echo "$template" > $fp
fi
