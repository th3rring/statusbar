#/bin/bash

# Links statusbar scripts to user local bin.
# Thomas Herring 2020


dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
dest="/home/therring/.local/bin/"

if [ ! -d $dest ]
then
	echo "No $dest found, making one"
	mkdir $dest
fi


for i in  $dir/*
do
  if [ "$i" != "link.sh" ]
  then

    # Command to link or override existing links.
    ln -sfn "$i"  "$dest"
    echo "Linking $i  to $dest"
  fi
done
