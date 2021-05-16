
prepping to add new data provided by Yuhan 2021.04
ps.  inet-dev-class/mapbox/Data.rst  seems was for smelly.

INPUT: csv 

use inet-dev-class/mapbox/adjoinCsv2gson.py
files staged in CSV_adjoin there [on 540t], round 2 use lunaria

checked inet-dev-class/mapbox/adjoinCsv2gson.py, no code change needed.
run wrapper, under old name, caAirCsv2gson.sh, slight update for In/Out dir path.

cd ~/tin-gh/inet-dev-class/mapbox
./caAirCsv2gson.sh 2>&1 | tee adjoinCsv2gson.2021.0413.log

(conversion ran on wsl 450, round 2 on lunaria)
spot check dacsjvnew_AVOC_07_Day_Sp


upload to mapbox, to acc tin117
run on lunaria (got mapbox py venv installed 2021.04)

cd ~/tin-gh/inet-dev-class/mapbox
setup mapbox token per 
caair_uploader.sh
export SECRET=sk.ey

cd ~/tin-gh/inet-dev-class/mapbox
source venv4mapbox/bin/activate
cd ~/tin-gh/inet-dev-class/mapbox/DATA_adjoin_0410
../caair_uploader.sh 2>&1 | tee -a  ../adjoin_uploader.2021_0411.log

So there were two uploads, 2021/04/11 and a smaller fix for 2021/04/13.
They corresponds to the two peaks with tileset processing charge for 1m.
https://mail.google.com/mail/u/2/#search/mapbox+billing/FMfcgxwLtkWgbKQFzwxrQjJNbFLFGGSK?projector=1

In communication with Mikel Maron to get them waived and asking for mapbox sponshorship for tin117 (t@berk)

~~~~~

created a new repo
https://github.com/lbnl-science-it/adjoint
to be eventually adjoint.lbl.gov

seeding with the only files needed to render the web app (index.html -> adjoint.html)
+ README
+ LICENSE

This site will remain as the code development, while leaving the lbnl-science-it/ repo as production.


~~~~~

DNS setup
smelly CNAME to smelly.lbl.gov.cdn.cloudflare.net
github has custom domain smelly.lbl.gov, it doesn't need to know about cloudflare
adjoint CNAME to adjoint.lbl.gov.cdn.cloudflare.net
actually see https://commons.lbl.gov/display/cpp/Cloudflare+-+Web+Server+protection
need to make request there.

~~~~~~~

ps. ran data conversion from csv to mapbox tile twice circa 2021.04 as first batch of data had some duplication/error


~~~~~

2021.0515

Need to retire use of old upload method in inet-dev-class/mapbox/caair_uploader.sh
and transition to use MTS, Mapbox Tiling Service, which use a json description file to describe 10m resolution.
these programmer thing... a command line option for upload would have been so much easier to script rather than generate so many json.  though maybe they just don't expect so many tilesets.

https://docs.mapbox.com/mapbox-tiling-service/guides/

for 4 km grid, prob need zoom between 11 and 16.  try zoom 14
but do i care to have a max zoom?  i don't care if it is oversimplified, but a colored grid is still useuful info.

actually, mapbox minzoom and maxzoom is just so there is programatic way to say when feature are visible or not.
for polygon data, for map display of features, it make sense some large polygon to be not visible when zoom is high.
but i only care for area to be colored in certain way, so i should allow for all zoom.
just so long as can set resolution to 10m should be good.
mapbox absolute max zoom is 22.


