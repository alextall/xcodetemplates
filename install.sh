#!/bin/bash

template_path="$HOME/Library/Developer/Xcode/File Templates/"

echo "This script will install Xcode file templates to $template_path"
echo -n "Do you wish to continue? y/n: "
read should_install

die() { echo "$*" 1>&2 ; exit 1; }

case $should_install in

  y) ;;
    
  n | *) die "Canceling..." ;;
  
esac


if [ ! -d "$template_path" ]; then 

  echo "Directory does not exist. Creating..."
  mkdir -p "$template_path"
  
  if [ $? != 0 ]; then
    die "Could not create $template_path"
  fi

fi


echo "Installing..."

cp -R ./templates/* "$template_path"
