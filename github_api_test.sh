#!/bin/bash
url="https://api.github.com/"
token="b73ca6bb6194ed017857ae84a55d8cb2649c5b60"

names=()
sizes=()
upperlim=12
for ((i=0; i<=${upperlim}; i++)); do
    name=$(curl -s -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].name') 
    size=$(curl -s -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].size')
    names+=($name)
    sizes+=($size)
done
