#!/bin/bash
# usage sh get_last_fm.sh **secret token** madrid
if (( $# < 2 )); then
    echo "You must supply an access token and a city."
    exit 1
fi

if result=$(curl "http://ws.audioscrobbler.com/2.0/?method=geo.getevents&location=$2&limit=70&api_key=$1&format=json" 2>/dev/null); then
    echo $result > last_fm_happenings_search_result.json
    echo "result: $result"
else
    echo "Communication error"
fi