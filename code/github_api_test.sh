#!/bin/bash
#!/usr/bin/gnuplot -persist
url="https://api.github.com/"
token=""

names=()
sizes=()
upperlim=12
for ((i=0; i<=${upperlim}; i++)); do
    name=$(curl -s -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].name') 
    size=$(curl -s -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].size')
    names+=($name)
    sizes+=($size)
done
