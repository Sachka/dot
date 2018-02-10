# Prints the current time in UTC.

run_segment() {
	date -u +"%H:%M %Z"
	return 0
}
