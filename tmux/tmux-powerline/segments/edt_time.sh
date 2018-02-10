# Prints the current time in UTC.

run_segment() {
	TZ=America/New_York date +"%H:%M %Z"
	return 0
}
