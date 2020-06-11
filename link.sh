#/bin/bash

# Links statusbar scripts to user local bin.
# Thomas Herring 2020


dir=$(pwd)
dest="/home/therring/.local/bin/"

for i in  * 
do
  if [ "$i" != "link.sh" ]
  then

    # Command to link or override existing links.
    ln -sfn "$dir/$i"  "$dest"
    echo "Linking $dir/$i  to $dest"
  fi
done
