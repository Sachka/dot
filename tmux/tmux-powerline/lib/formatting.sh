__print_colored_content() {
	#echo -n "#[fg=colour$3, bg=colour$2]"
	#echo -n "#[fg=colour$3, bg=default]"
	echo -n "#[fg=brightgreen, bg=default]"
	echo -n "$1"
	echo -n "#[default]"
}
