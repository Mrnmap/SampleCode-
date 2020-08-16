#!/bin/bash

echo "Enter Keyword to search":
ead $Q
echo "Extract repository"

# Check cURL command if available (required), abort if does not exists
type curl >/dev/null 2>&1 || { echo >&2 "Required curl but it's not installed. Aborting."; exit 1; }

RESPONSE= curl "https://api.github.com/search/repositories?q=$Q&sort=stars&per_page=100" | grep "total_count\|full_name\|name\|login\|html_url"

#FN= $RESPONSE | grep "full_name"
echo "$RESPONSE"

#echo "$RESPONSE"  | # Use for further processsing
