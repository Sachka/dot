# Prints the current time in CEST.

run_segment() {
	TZ=Europe/Paris date  +"%H:%M %Z"
	return 0
}
