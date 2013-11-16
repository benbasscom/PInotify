#!/bin/bash
# checks to see if a hardware raid card is installed.

# system_profiler SPHardwareRAIDDataType | grep "Hardware RAID"

VAR1=$1
: ${VAR1:="$(system_profiler SPHardwareRAIDDataType | grep "Hardware RAID")"}


# checking to see if var 1 is empty.  If empty, than the if statement is true.
if [[ -z "$VAR1" ]]; then

	echo 1
	exit 1
else
	echo 0
	exit 0
fi

exit 0
