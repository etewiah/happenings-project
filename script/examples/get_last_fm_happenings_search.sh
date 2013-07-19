#!/bin/bash
# usage sh get_last_fm.sh **secret token**
if (( $# < 1 )); then
    echo "You must supply an access token."
    exit 1
fi

if result=$(curl "http://ws.audioscrobbler.com/2.0/?method=geo.getevents&location=Berlin&limit=70&api_key=$1&format=json" 2>/dev/null); then
    echo $result > last_fm_happenings_search_result.json
    echo "result: $result"
else
    echo "Communication error"
fi