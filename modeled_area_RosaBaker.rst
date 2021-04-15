
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




v3 trying this (manually picked coordinate from dacsjvnew_AVOC_07_All_Sp.csv, using seed value from prev version to poke around):
                      [ -122.921617885187, 38.9700811773257 ],     // LT
                      [ -118.369451083458, 38.9700811773257 ],     // RT
                      [ -118.369451083458, 34.6547740043536 ],     // RB
                      [ -122.921617885187, 34.6547740043536 ],     // LB
                      [ -122.921617885187, 38.9700811773257 ]      // LT
                      // corrected bound info per tileset viewer -122.92,34.65,-118.36,39 <-- this was approximate value, and was also off (created a perfect sq which doesn't make sense
   "11137","11137",     -122.7657783089,34.6914480743932,2.44189302042023e-24,
                        -122.721374309954,34.6924761660941,-122.72014258976,34.6558014155024,
                        -122.764521993345,34.6547740043536
       "480","480",     -118.415542553371,38.8280997685751,7.48475108075829e-17,-118.368190662502,38.8271242021185,
                        -118.369451083458,38.7900860548509,-118.416775003347,38.791060979189
               "1","1", -122.921617885187,38.9689712780554  ,5.92559832438568e-07,
                        -122.874163293308,38.9700811773257,-122.872756412373,38.93303669161,
                        -122.920182917571,38.9319275226955
        "11232","11232",-118.545077438672,34.6982175438453,  1.2772911758552e-11,
                        -118.500665646091,34.6973115067463,-118.501774356314,34.6606335552431,
                        -118.546161540584,34.6615389925381

