#!/bin/bash
url="https://api.github.com/"



#curl -i $url"users/PranavMurali"
token="Your Token"
#keys= curl -u PranavMurali:$token https://api.github.com/users/PranavMurali | jq 'keys'
#log= curl -u PranavMurali:$token https://api.github.com/users/PranavMurali | jq '.login'


upperlim=12
for ((i=0; i<=${upperlim}; i++)); do
    curl -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].name' 
done

