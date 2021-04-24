#!/bin/bash

#### copy necessary files to the production github site at https://github.com/lbnl-science-it/adjoint

DST=~/tin-gh/lbnl-science-it/adjoint
SRC=.

FileList="adjoint.html adjoint_3D.html  favicon.png  favicon.ico README.rst LICENSE About.html figures"
# left out:
# - CNAME which is github specific for that site
# - much of png favicon stuff
# - index.html as that's a link and cp don't work properly

for File in $FileList; do
	cp -pR $SRC/$File $DST
done



