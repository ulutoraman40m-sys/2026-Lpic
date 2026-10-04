#!/bin/bash

# 知りたいことに応じた値の入力を求める
clear
echo "=============================================="
echo "知りたいことに応じて1から5の番号を入力してください"
echo "=============================================="
echo "1：検索系"
echo "2：ファイル操作系"
echo "3：文字列操作系"
echo "4：その他"
echo "q：終了"
echo "=============================================="
echo -n "入力値："
read nyuryoku

# 2. 入力された値に応じて別のシェルを実行する
case "$nyuryoku" in
    1)
        ./kensakukei.sh
        ;;
    2)
        ./filesousa.sh
        ;;
    3)
        ./mojiretusousa.sh
        ;;
    4)
        ./sonota.sh
        ;;
    q)
        exit 1
        ;;
    *)
        echo "エラー: 1から4の数値を入力してください。"
        exit 1
        ;;
esac