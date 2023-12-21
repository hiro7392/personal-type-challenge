#!/bin/bash
calculate_progress_rate(){
    local name=$1
    local max_count=$2
    local count=$(find . -maxdepth 1 -type d -name "*$name*" | wc -l)   # 'nane' を含むファイルをカウント
    local percentage=$(echo "scale=2; $count / $max_count * 100" | bc)
    printf "%-15s completed: %3d/%-3d  progress_rate %6.2f %%\n" "($name)" $count $max_count $percentage
}

# 最大数
max_easy=13
max_medium=95
max_difficult=30

# 結果を表示
calculate_progress_rate "easy" $max_easy
calculate_progress_rate "max_medium" $max_medium
calculate_progress_rate "max_difficult" $max_difficult
