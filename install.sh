#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

print_header() {
    echo -e "${BLUE}══════════════════════════════════════════════════════${NC}"
    echo -e "${BLUE} $1${NC}"
    echo -e "${BLUE}══════════════════════════════════════════════════════${NC}"
}

print_ok() { echo -e "${GREEN}  ✓${NC} $1"; }
print_warn() { echo -e "${YELLOW}  ⚠${NC} $1"; }
print_err() { echo -e "${RED}  ✗${NC} $1"; }
print_item() { echo -e "${CYAN}  •${NC} $1"; }

detect_skills_dir() {
    case "$(uname -s)" in
        Darwin)  SKILLS_DIR="$HOME/Library/Application Support/Claude/skills" ;;
        Linux)   SKILLS_DIR="$HOME/.config/Claude/skills" ;;
        *)       print_err "Unsupported OS. Copy skills manually."; exit 1 ;;
    esac
}

ensure_skills_dir() {
    if [ ! -d "$SKILLS_DIR" ]; then
        print_warn "Claude skills directory not found: $SKILLS_DIR"
        read -p "  Create it? (y/n): " -n 1 -r; echo
        [[ $REPLY =~ ^[Yy]$ ]] && mkdir -p "$SKILLS_DIR" || exit 1
    fi
}

get_skills() {
    local src="$(dirname "$0")/skills"
    [ ! -d "$src" ] && { print_err "Skills directory not found"; exit 1; }
    for d in "$src"/*/; do
        [ -f "$d/SKILL.md" ] && basename "$d"
    done | sort
}

install_one() {
    local name=$1
    local src="$(dirname "$0")/skills/$name"
    local dst="$SKILLS_DIR/$name"
    [ ! -d "$src" ] && { print_err "Not found: $name"; return 1; }
    if [ -d "$dst" ]; then
        read -p "  Overwrite $name? (y/n): " -n 1 -r; echo
        [[ ! $REPLY =~ ^[Yy]$ ]] && return 0
    fi
    mkdir -p "$dst" && cp -r "$src"/* "$dst/"
    print_ok "$name"
}

list_skills() {
    print_header "Available Seedance 2.0 Creator Skills"
    echo
    local i=0
    for s in $(get_skills); do
        i=$((i+1))
        local title=$(grep "^# " "$(dirname "$0")/skills/$s/SKILL.md" | head -1 | sed 's/^# //')
        printf "  ${CYAN}%2d)${NC} %-22s %s\n" "$i" "$s" "$title"
    done
    echo
    print_ok "$i skills available"
}

interactive() {
    print_header "Seedance 2.0 Creator Skills — Installer"
    echo
    local skills=($(get_skills))
    local n=${#skills[@]}

    for i in "${!skills[@]}"; do
        local num=$((i+1))
        local title=$(grep "^# " "$(dirname "$0")/skills/${skills[$i]}/SKILL.md" | head -1 | sed 's/^# //' | cut -c1-50)
        printf "  %2d) %-22s %s\n" "$num" "${skills[$i]}" "$title"
    done

    echo
    echo "  Enter numbers (e.g. 1 3 5), 'all', or 'quit'"
    read -p "  > " -r sel

    case "$sel" in
        all)  for s in "${skills[@]}"; do install_one "$s"; done ;;
        quit) exit 0 ;;
        *)    for num in $sel; do
                [[ $num =~ ^[0-9]+$ ]] && [ "$num" -ge 1 ] && [ "$num" -le "$n" ] \
                  && install_one "${skills[$((num-1))]}" \
                  || print_err "Invalid: $num"
              done ;;
    esac
}

main() {
    detect_skills_dir
    ensure_skills_dir

    case "${1:-}" in
        --all)  print_header "Installing all skills"; for s in $(get_skills); do install_one "$s"; done ;;
        --list) list_skills ;;
        -h|--help) echo "Usage: $0 [--all | --list | --help]" ;;
        *)      interactive ;;
    esac

    echo
    echo -e "${GREEN}Done.${NC} Skills installed to: $SKILLS_DIR"
    echo "Restart Claude to load new skills."
}

main "$@"
