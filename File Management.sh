folders='Text EverythingElse' # 2 folders to be created to seperate the text files from the other files.
texts="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js" #Possible Text file Extensions.

for folder in $folders
do
	if [ $folder == 'Text' ] # Check if folder iterated is 'Text'
	then
		mkdir -p $folder # 'Text' folder is made
		mv $texts $folder 2>/mnt/c/Users/Pranav/yes # All files with text extensions are moved into the 'Text' folder.

	elif [ $folder == 'EverythingElse' ] # Check if folder iterated is 'EverythingElse'
	then
		mkdir -p $folder  # 'EverythingElse' folder is made
		mv $ $folder 2>/mnt/c/Users/Pranav/yes # All files which aren't Text files are moved into the 'EverythingElse' folder.
	fi

done

echo "Sorted." #Prints onto the terminal when sorting is completed.