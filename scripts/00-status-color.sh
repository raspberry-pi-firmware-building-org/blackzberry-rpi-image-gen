#!/bin/bash 

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
NC='\033[0m' # No Color


eco() {
    local type="$1"
    shift
    local text="$*"

    case "$type" in
            r) text="${RED}$text" ;;
            g) text="${GREEN}$text" ;;
            y) text="${YELLOW}$text" ;;
            b) text="${BLUE}$text" ;;
            m) text="${MAGENTA}$text" ;;
            c) text="${CYAN}$text" ;;
            w) text="${WHITE}$text" ;;
            bd) text="${BOLD}$text" ;;
            ul) text="${UNDERLINE}$text" ;;
        esac
    

    echo -e "${text}${NC}"
}




# Status-Funktion
status() {
    local type="$1"
    shift
    local message="$*"

    case "$type" in
        success) echo -e "${GREEN}${BOLD}[✔] SUCCESS:${NC} $message" ;;
        info)    echo -e "${BLUE}${BOLD}[ℹ] INFO:${NC} $message" ;;
        warn)    echo -e "${YELLOW}${BOLD}[⚠] WARNING:${NC} $message" ;;
        error)   echo -e "${RED}${BOLD}[✖] ERROR:${NC} $message" ;;
        *)       echo -e "${NC}${BOLD}[?] UNKNOWN:${NC} $message" ;;
    esac
}
