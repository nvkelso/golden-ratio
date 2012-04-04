Map
{
    map-bgcolor: #000;
}

.country-shapes-50m[zoom<=5]
{
    line-color: #000;
    line-cap: round;
    line-join: round;
}

.country-shapes-10m[zoom>5]
{
    line-color: #000;
    line-cap: round;
    line-join: round;
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

.golden-ratio[zoom>3][zoom_start=10] { polygon-color: #cbdb3e; }
.golden-ratio[zoom>3][zoom_start=11] { polygon-color: #fff245; }
.golden-ratio[zoom>3][zoom_start=12] { polygon-color: #ffb72f; }
.golden-ratio[zoom>3][zoom_start=13] { polygon-color: #e2664b; }
.golden-ratio[zoom>3][zoom_start=14] { polygon-color: #fd56bf; }
.golden-ratio[zoom>3][zoom_start=15] { polygon-color: #751000; }
.golden-ratio[zoom>3][zoom_start=16] { polygon-color: #530027; }
.golden-ratio[zoom>3][zoom_start=17] { polygon-color: #28003a; }
.golden-ratio[zoom>3][zoom_start=18] { polygon-color: #050505; }