#!/usr/bin/env bash
set -e

EXERCISES=($(ls exercises/ex*.c))
TOTAL=${#EXERCISES[@]}
CURRENT_INDEX=0

show_menu() {
  clear
  local current=${EXERCISES[$CURRENT_INDEX]}
  local progress=$((CURRENT_INDEX + 1))
  local bar_len=50
  local done=$((progress * bar_len / TOTAL))
  local bar=$(printf "%-${bar_len}s" "#" | sed "s/ /-/g")
  local bar_display="[${bar:0:$done}>${bar:$done}]"

  echo ""
  echo "Progress: ${bar_display}  ${progress}/${TOTAL}"
  echo "Current exercise: ${current}"
  echo ""
  echo "h:hint / l:list / c:check / n:next / p:prev / x:reset / q:quit"
  echo ""
}

show_hint() {
  echo "💡 Hint for ${EXERCISES[$CURRENT_INDEX]}"
  grep -A5 "Goal:" "${EXERCISES[$CURRENT_INDEX]}" | sed 's/^/  /'
  echo ""
  read -rp "Press Enter to continue..."
}

list_exercises() {
  echo "📚 Available exercises:"
  for i in "${!EXERCISES[@]}"; do
    printf "  %2d) %s\n" "$((i + 1))" "${EXERCISES[$i]}"
  done
  echo ""
  read -rp "Press Enter to continue..."
}

check_exercise() {
  local ex="${EXERCISES[$CURRENT_INDEX]}"
  local test="tests/test_$(basename "${ex%.*}").sh"
  if [[ -f "$test" ]]; then
    bash "$test"
  else
    echo "⚠️ No test found for $ex"
  fi
  read -rp "Press Enter to continue..."
}

reset_exercise() {
  local ex="${EXERCISES[$CURRENT_INDEX]}"
  git checkout -- "$ex" 2>/dev/null || echo "⚠️ Cannot reset $ex (not under Git?)"
  echo "✅ $ex reset to original version."
  sleep 1
}

# 🎯 Main loop
while true; do
  show_menu
  read -rn1 -p "> " action
  echo ""

  case $action in
    h) show_hint ;;
    l) list_exercises ;;
    c) check_exercise ;;
    n) ((CURRENT_INDEX=(CURRENT_INDEX + 1) % TOTAL)) ;;
    p) ((CURRENT_INDEX=(CURRENT_INDEX - 1 + TOTAL) % TOTAL)) ;;
    x) reset_exercise ;;
    q) echo "👋 Goodbye! Keep coding!"; exit 0 ;;
    *) echo "❓ Unknown command: $action"; sleep 1 ;;
  esac
done
