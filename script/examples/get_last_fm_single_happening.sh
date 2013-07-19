#!/bin/bash
# usage sh get_last_fm.sh **secrettoken**
if (( $# < 1 )); then
    echo "You must supply an access token."
    exit 1
fi

# if short=$(curl "https://api-ssl.bitly.com/v3/shorten?access_token=xxxxxxxxxxxxxxxxxxxxxx&format=txt&longUrl=$1" 2>/dev/null); then
if result=$(curl "http://ws.audioscrobbler.com/2.0/?method=event.getInfo&event=3547113&api_key=$1&format=json" 2>/dev/null); then
    echo $result > last_fm_single_happening.json
    echo "result: $result"
else
    echo "Communication error"
fi