#!/bin/bash
script_dir=$(dirname "$(realpath "$0")")
cd "$script_dir/paintings"
painting=$(ls | shuf -n 1) 
cat $painting
