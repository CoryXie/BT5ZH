#!/usr/bin/awk -f

BEGIN { print FILENAME }

{
	if ($1 ~ /[0-9]+\.[0-9]/) {
		split($1, array, ".", seps)
		if (length(array) == 2) {
			printf "%s %s", "##", $0
		} else if (length(array) == 3) {
			printf "%s %s", "###", $0
		}
		else if (length(array) == 4) {
			printf "%s %s", "####", $0
		} else if (length(array) == 5) {
			printf "%s %s", "#####", $0
		}
	} else {
		print $0
	}
}


END { print "- DONE -" }