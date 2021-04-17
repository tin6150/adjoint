#!/bin/bash

#### copy necessary files to the production github site at https://github.com/lbnl-science-it/adjoint

DST=~/tin-gh/lbnl-science-it/adjoint
SRC=.

FileList="adjoint.html adjoint_3D.html  favicon.png  favicon.ico README.rst"
# left out index.html which is a sym link
# CNAME which is github specific for that site

for File in $FileList; do
	cp -p $SRC/$File $DST
done



