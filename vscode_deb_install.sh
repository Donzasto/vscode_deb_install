#!/bin/bash

#Run next to vscode.deb file

temp_dir=$(mktemp -d)

mv code*.deb $temp_dir

cd $temp_dir

ar x code*.deb

tar xvf data.tar.xz 

echo $temp_dir

cp -r ./usr/* /usr/
