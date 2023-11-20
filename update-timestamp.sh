#!/bin/bash

# 引数チェック
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 [file] [YYMMDD] [HHMMSS]"
    exit 1
fi

# 引数からファイル名、日付、時刻を取得
FILE=$1
DATE=$2
TIME=$3

# 日付と時刻の形式を変更（YYYY-MM-DD HH:MM:SS）
FORMATTED_DATE="$(echo $DATE | sed -r 's/(..)(..)(..)/20\1-\2-\3/')"
FORMATTED_TIME="$(echo $TIME | sed -r 's/(..)(..)(..)/\1:\2:\3/')"

# touchコマンドを使用してタイムスタンプを更新
touch -d "$FORMATTED_DATE $FORMATTED_TIME" "$FILE"


