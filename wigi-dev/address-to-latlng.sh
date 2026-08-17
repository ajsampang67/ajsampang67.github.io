#!/bin/sh
input="addresses.txt"
while IFS= read -r line
do
	WHERE="\"$line\""
	API_KEY="REDACTED"
	echo $line:$(curl -s --get --data-urlencode "address=$line" --data-urlencode "key=$API_KEY" https://maps.googleapis.com/maps/api/geocode/json | jq -r '.results[0].geometry.bounds.northeast | "\(.lat) \(.lng)"')
done < "$input"
