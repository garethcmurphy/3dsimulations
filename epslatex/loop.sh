#!/bin/bash
alphabet=`ls *.eps`
count=0					# Initialise a counter
for letter in $alphabet			# Set up a loop control
do					# Begin the loop
	echo $letter
	BASENAME=`basename $letter `
	echo $BASENAME
	convert $letter $BASENAME.pdf
done					# End of loop
