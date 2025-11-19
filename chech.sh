check_answer() {
  guess=$1
  secret=$2
  
  if (( guess < secret )); then
      echo "Загаданное число больше."
      return 1
  elif (( guess > secret )); then
      echo "Загаданное число меньше."
      return 1
  else
      return 0
  fi
}
