#!/bin/bash
cd paintings
painting=$(ls | shuf -n 1) 
cat $painting
