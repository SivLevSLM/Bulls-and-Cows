read_input() {
  local guess
  while true; do
    read -p "Введи число: " guess
    if [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo $guess
        return
    else
        echo "Ошибка. Введи целое число."
    fi
  done
}
