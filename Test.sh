#!/bin/bash
url="https://api.github.com/"



#curl -i $url"users/PranavMurali"
token="f0fd9acfd681d61170e6478ea0cf55c53b2fcb8b"
#keys= curl -u PranavMurali:$token https://api.github.com/users/PranavMurali | jq 'keys'
#log= curl -u PranavMurali:$token https://api.github.com/users/PranavMurali | jq '.login'


upperlim=12
for ((i=0; i<=${upperlim}; i++)); do
    curl -u PranavMurali:$token https://api.github.com/users/PranavMurali/repos | jq --argjson q $i '.[$q].name' 
done

