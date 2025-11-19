#!/bin/bash

source ./src/generate.sh
source ./src/input.sh
source ./src/check.sh

min=1
max=100

secret=$(generate_number $min $max)

echo "Игра: Угадай число!"
echo "Компьютер загадал число от $min до $max."

attempts=0

while true; do
    guess=$(read_input)
    attempts=$((attempts + 1))

    if check_answer $guess $secret; then
        echo "Победа! Вы угадали число за $attempts попыток!"
        break
    fi
done
