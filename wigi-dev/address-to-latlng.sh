#!/bin/sh
input="addresses.txt"
while IFS= read -r line
do
	WHERE="\"$line\""
	API_KEY="AIzaSyBIuIUnDlZ933iq2eTu-ZAYuj1jq76a1xE"
	echo $line:$(curl -s --get --data-urlencode "address=$line" --data-urlencode "key=$API_KEY" https://maps.googleapis.com/maps/api/geocode/json | jq -r '.results[0].geometry.bounds.northeast | "\(.lat) \(.lng)"')
done < "$input"
