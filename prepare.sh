#!/bin/bash
# ./prepare.sh number difficulty problem_name でディレクトリを生成する
input=$1
formatted_number=$(printf "%05d" $input)
mkdir "$formatted_number-$2-$3"
cd "$formatted_number-$2-$3"
touch main.ts