#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

get-tmux-option() {
	local option value default
	option="$1"
	default="$2"
	value="$(tmux show-option -gqv "${option}")"

	if [ -n "${value}" ]
	then
		echo "${value}"
	else
		echo "${default}"
	fi
}

main() {
	local theme
	theme="$(get-tmux-option "@tmuxtheme" "night")"

	if [ -f "${CURRENT_DIR}/${theme}.tmuxtheme" ]
	then
		tmux source-file "${CURRENT_DIR}/${theme}.tmuxtheme"
	fi
}

main "$@"

