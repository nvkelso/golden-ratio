Map
{
    map-bgcolor: #fff;
}

.country-shapes-50m[zoom<=5]
{
    line-color: #000;
    line-cap: round;
    line-join: round;
  	line-width: 0.5; 
}

.country-shapes-10m[zoom>5]
{
    line-color: #000;
    line-cap: round;
    line-join: round;
  	line-width: 0.5; 
}

/*
"rgb(255,255,255)" // zoom 0
"rgb(255,255,255)" // 1
"rgb(255,255,255)" // 2
"rgb(255,255,255)" // 3
"rgb(255,255,255)" // 4
"rgb(255,255,255)" // 5
"rgb(255,255,255)" // 6
"rgb(225,225,225)" // 7
"rgb(178,178,178)" // 8
"rgb(150,196,56)" // 9
"rgb(203,219,62)" // 10
"rgb(255,242,69)" // 11
"rgb(255,183,47)" // 12
"rgb(226,102,75)" // 13
"rgb(253,86,191)" // 14
"rgb(117,16,0)" // 15
"rgb(83,0,39)" // 16
"rgb(40,0,58)" // 17
"rgb(5,5,5)" // 18
*/

.golden-ratio[zoom>3][zoom_start=10] { polygon-fill: #cbdb3e; }
.golden-ratio[zoom>3][zoom_start=11] { polygon-fill: #fff245; }
.golden-ratio[zoom>3][zoom_start=12] { polygon-fill: #ffb72f; }
.golden-ratio[zoom>3][zoom_start=13] { polygon-fill: #e2664b; }
.golden-ratio[zoom>3][zoom_start=14] { polygon-fill: #fd56bf; }
.golden-ratio[zoom>3][zoom_start=15] { polygon-fill: #751000; }
.golden-ratio[zoom>3][zoom_start=16] { polygon-fill: #530027; }
.golden-ratio[zoom>3][zoom_start=17] { polygon-fill: #28003a; }
.golden-ratio[zoom>3][zoom_start=18] { polygon-fill: #050505; }