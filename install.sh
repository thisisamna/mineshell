#!/bin/bash
set -e
script_dir=$(dirname "$(realpath "$0")")
cd "$script_dir"
echo "______________________________________"
echo "welcome to mineshell!"
echo "installing this will display a random miencraft painting each time you open your terminal."
echo "like this one:"
./random_painting.sh
echo "______________________________________"
echo "WARNING: please back up your .bashrc and .zshrc before proceeding!"
echo ""
echo "What do you want to do?"
echo "[1] Add to .bashrc"
echo "[2] Add to .zshrc"
echo "Or press any key to exit."
read choice
if [[ $choice -eq 1 ]]
then
	config_file="$HOME/.bashrc"
elif [[ $choice -eq 2 ]]
then 
	config_file="$HOME/.zshrc"
fi
if [[ $choice -eq 1 || $choice -eq 2 ]]
then
	echo "# mineshell script, comment to disable" >> tempfile
	echo "$script_dir/random_painting.sh" >> tempfile
	echo ""
	cat "$config_file" >> tempfile
	mv tempfile "$config_file"
	echo "Success! Added to $config_file."

fi
