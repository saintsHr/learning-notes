#!/bin/bash

COUNTER_FILE=".commit_counter"

# inicializa o contador se não existir
if [ ! -f "$COUNTER_FILE" ]; then
  echo 0 > "$COUNTER_FILE"
fi

count=$(cat "$COUNTER_FILE")
count=$((count + 1))

echo "$count" > "$COUNTER_FILE"

git add .
git commit -m "commit: $count"
git push
clear
