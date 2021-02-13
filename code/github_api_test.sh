#!/bin/bash
#!/usr/bin/gnuplot -persist
url="https://api.github.com/"
token=""
echo "Your Username?"
read myname
echo ""
echo "Access Token?"
read token
echo ""
names=()
sizes=()
upperlim=12
for ((i=0; i<=${upperlim}; i++)); do
    name=$(curl -s -u PranavMurali:$token https://api.github.com/users/${myname}/repos | jq --argjson q $i '.[$q].name') 
    size=$(curl -s -u PranavMurali:$token https://api.github.com/users/${myname}/repos | jq --argjson q $i '.[$q].size')
    names+=($name)
    sizes+=($size)
done
echo "You have ${#names[@]} repos!" 
echo ""
for (( i = 0; i <${#names[@]}; i++ )) 
do 
       echo "${names[i]} has size ${sizes[i]} Kb"
       echo ""
done
