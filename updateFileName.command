#!/bin/bash

cd -- "$(dirname "$0")"

#loops through each file in the current directory and checks the filename aganist the given regular expression use case.
# if the filename contains the regular expression, it is removed
for i in *; do 
	newName=$(echo "$i" | sed 's/\_1\_68//' | sed 's/\_[0-9]\_//' | sed 's/\_[0-9][0-9]\_//')
	 mv  "$i" "$newName"
done 

