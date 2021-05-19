#!/bin/bash
dirname="/linux-study/bot/niconico-ranking-rss"
mkdir -p $dirname
filename="${dirname}/hourly-ranking-`date +'%Y%m%d%H%M'`.xml"
echo "保存しました: $filename"
# -s 何も表示せずに実行 -o 結果を指定したファイルへ保存 -H "User~" HTTPのリクエストにUser-Agentというヘッダを追加
curl -s -o $filename -H "User-Agent: CrawlBot; kazuopp312@example.com" https://www.nicovideo.jp/ranking/genre/all?rss=2.0&lang=ja-jp