
prepping to add new data provided by Yuhan 2021.04
ps.  inet-dev-class/mapbox/Data.rst  seems was for smelly.

INPUT: csv 

use inet-dev-class/mapbox/adjoinCsv2gson.py
files staged in CSV_adjoin there [on 540t]

checked inet-dev-class/mapbox/adjoinCsv2gson.py, no code change needed.
run wrapper, under old name, caAirCsv2gson.sh, slight update for In/Out dir path.

cd ~/tin-gh/inet-dev-class/mapbox
./caAirCsv2gson.sh 2>&1 | tee adjoinCsv2gson.2021.0410.log

(conversion ran on wsl 450)
spot check dacsjvnew_AVOC_07_Day_Sp


upload to mapbox, to acc tin117
run on lunaria (got mapbox py venv installed 2021.04)

cd ~/tin-gh/inet-dev-class/mapbox
setup mapbox token per 
caair_uploader.sh
export SECRET=...

cd ~/tin-gh/inet-dev-class/mapbox/DATA_adjoin_0410
../caair_uploader.sh 2>&1 | tee -a  ../adjoin_uploader.2021_0411.log


~~~~~

created a new repo
https://github.com/lbnl-science-it/adjoint
to be eventually adjoint.lbl.gov

seeding with the only files needed to render the web app (index.html -> adjoint.html)
+ README
+ LICENSE

This site will remain as the code development, while leaving the lbnl-science-it/ repo as production.


