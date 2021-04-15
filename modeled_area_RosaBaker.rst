
trying to get 4 vertices of the modeled area, then create gjson to upload to mapbox.

the area roughly go from Santa Rosa to Bakerfield.
Used these names in the file in case future version model a different area.
it is actually north of Santa Rosa, closer to Lincoln for north bound, but wanted to also emphasize the western boundary.


the for vertices of the modeled area, per R summary()

~~~

      X               id             lon1             lat1      
 Min.   :    1   Min.   :    1   Min.   :-122.9   Min.   :34.69  
 Max.   :11232   Max.   :11232   Max.   :-118.4   Max.   :39.00  

     value                lon2             lat2            lon3       
 Min.   :0.000e+00   Min.   :-122.9   Min.   :34.69   Min.   :-122.9  
 Max.   :1.253e-05   Max.   :-118.4   Max.   :39.00   Max.   :-118.4  

      lat3            lon4             lat4      
 Min.   :34.66   Min.   :-122.9   Min.   :34.65  
 Max.   :38.96   Max.   :-118.4   Max.   :38.96  


~~~

lon1 , lat1       min
-122.9 , 34.69 


lon1 , lat1       max 
-118.4, 39.00

lon2,lat2 min; max
-122.9, 34.69
-118.4, 39.00

lon3,lat3 min; max
 Min.   -122.9  , 34.66
 Max.   -118.4  , 38.96 

lon4,lat4
 Min.   -122.9  , 34.65  
 Max.   -118.4  , 38.96  


overall 4 points in gson seq (ie lng,lat):

1. TL -122.9 , 34.69
2. TR -122.9 , 39.00

3. BR -118.4  , 39.00
4. BL -118.4  , 34.65

5. = 1

actually, for CA area...
abs(L) > abs(R) 
(Top) > (Bottom)

so, trying this:
                      [ -121.9, 39.00 ],     // LT
                      [ -118.4, 39.00 ],     // RT
                      [ -118.4, 34.69 ],     // RB
                      [ -121.9, 34.69 ],     // LB
                      [ -121.9, 39.00 ],     // LT




