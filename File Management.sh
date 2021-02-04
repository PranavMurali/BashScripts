folders='Text EverythingElse'
texts="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js"

for folder in $folders
do
	if [ $folder == 'Text' ]
	then
		mkdir -p $folder
		mv $texts $folder 2>/mnt/c/Users/Pranav/yes

	elif [ $folder == 'EverythingElse' ]
	then
		mkdir -p $folder
		mv $ $folder 2>/mnt/c/Users/Pranav/yes
	fi

done

echo "$(tput setaf 2)Successfully organized..$(tput sgr0)"