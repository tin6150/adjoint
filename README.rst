Adjoin
======

Collaboration with Ling Jin.
Proof of Concept.  Data are for demo purpose only.  

Tmp URL: https://tin6150.github.io/adjoin/ 



Thanks
======

A shoutout to Mapbox.com for generously hosting!

tin117, register using tin@berkeley
for adjoin data web app 2020.01 with Ling and Yuhan.

[sn-117m is used to treat bone cancer.
sn126 may have been most abundant isotope]


TODO
====

mapbox acc tin117 for the adjoin data
take screenshot during acc creation, theme creation, etc
so that can use them for slide deck if ever do labtech talk.
"from boring csv to interactive map"

xref: inet-dev-class/mapbox for 
* csv2gson + upload script.
* Data.rst   = data processing steps
* README.rst = notes on mapbox, api, barebone and eg geoJSON, etc


coloring via JS instead of studio:

* stuck not getting tile to render by value/max.
  check back old work:  (later maybe closer to what i need):
    - ZWEDCcsv2gson_heatmap.py.
    - https://tin6150.github.io/inet-dev-class/mapbox/ZWEDC_50x50sq.html ZWEDC csv->geojson, data in 50x50m sq.
    - https://tin6150.github.io/inet-dev-class/mapbox/mapbox-addLayer.html Use addLayer() to get ZWEDC_50x50 as tileset data, then use JS to do data-driven presentation. (thus essentially not using mapbox studio styling to present the data). Need to understand JS much more here to do the work.
    - https://tin6150.github.io/inet-dev-class/mapbox/ZWEDC_50x50sq_js.html - GL JS version of ZWEDC_50x50sq.html (ie, use JS instead of Studio to color render data), which is the method needed to addLayer() to Tyler's framework.
	

  For population, maybe of use:
  https://tin6150.github.io/inet-dev-class/mapbox/mapbox-census-pop-delaware.html Delaware population count choropleth
  https://tin6150.github.io/inet-dev-class/mapbox/mapbox-census-pop.html Similar to above, with some hover data display.
  https://tin6150.github.io/inet-dev-class/mapbox/tass_city_pop.html CalTrans TASS CA cities population (count, not density)

