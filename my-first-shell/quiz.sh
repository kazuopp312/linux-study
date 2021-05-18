#!/bin/bash
read -p "日本で2番目に高い山は槍ヶ岳でしょうか？ [y/n]" answer
if [ $answer = "n" ]; then
  echo 正解です
else
  echo 不正解です
fi