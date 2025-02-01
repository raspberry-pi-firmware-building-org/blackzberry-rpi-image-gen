#!/bin/bash

# Farben und Formatierungen
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
NC='\033[0m' # No Color

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
