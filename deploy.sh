#!/bin/bash

#### copy necessary files to the production github site at https://github.com/lbnl-science-it/adjoint

DST=~/tin-gh/lbnl-science-it/adjoint
SRC=.

FileList="adjoint.html adjoint_3D.html  index.html favicon.png  favicon.ico README.rst LICENSE"
# left out:
# - CNAME which is github specific for that site
# - much of png favicon stuff

for File in $FileList; do
	cp -p $SRC/$File $DST
done



