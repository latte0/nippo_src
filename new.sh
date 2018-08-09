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

- [ ] 開発
- [ ] 研究
- [ ] おしゃれ
- [ ] 料理

EOF
)
if [ -f "$fp" ]; then
  echo "file already exists at $fp"
  exit 1
else
  echo "creating entry at $fp"
  echo "$template" > $fp
fi
