#mexico 7/19.992/-100.867
#lowlands 7/50.393/2.674
#china 5/26.631/110.032
#china2 4/31.36/109.66
#northern europe 4/50.96/12.63
#germany 5/50.905/10.015
#us 4/37.72/-97.06
#newyork 10/40.7312/-73.9114
#sf 10/37.6532/-122.1921
#california 7/36.008/-118.393
#east coast 8/40.102/-75.258
#east coast2 7/40.731/-75.514
#brazil 8/-23.261/-45.453
#lagos 7/6.398/2.857
#lagos2 6/5.863/2.368
#israel 7/33.455/34.420
#lowlands2 7/52.586/8.746
#london 8/51.758/-0.326
#sydney 7/-36.123/148.203
#canberra 6/-32.938/147.605
#tokyo 8/35.686/137.912
#japan 7/36.122/137.091

all: index.html

index.html: \
	renders/gr_mexico.png renders/gr_lowlands.png renders/gr_china.png \
	renders/gr_china2.png renders/gr_northerneurope.png \
	renders/gr_germany.png renders/gr_us.png \
	renders/gr_newyork.png renders/gr_sf.png \
	renders/gr_california.png renders/gr_eastcoast.png renders/gr_eastcoast2.png \
	renders/gr_brazil.png renders/gr_lagos.png renders/gr_lagos2.png \
	renders/gr_israel.png renders/gr_lowlands2.png renders/gr_london.png \
	renders/gr_sydney.png renders/gr_canberra.png renders/gr_tokyo.png \
	renders/gr_japan.png

renders/gr_mexico.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 19.992 -100.867 -z 7 -d 1824 1568 -o $@

renders/gr_lowlands.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 50.393 2.674 -z 7 -d 1824 1568 -o $@

renders/gr_china.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 26.631 110.032 -z 5 -d 1824 1568 -o $@

renders/gr_china2.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 31.36 109.66 -z 4 -d 1824 1568 -o $@

renders/gr_northerneurope.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 50.96 12.63 -z 5 -d 1824 1568 -o $@

renders/gr_germany.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 50.905 10.015 -z 5 -d 1824 1568 -o $@

renders/gr_us.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 37.72 -97.06 -z 4 -d 1824 1568 -o $@

renders/gr_newyork.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 40.7312 -73.9114 -z 10 -d 1824 1568 -o $@

renders/gr_sf.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 37.6532 -122.1921 -z 10 -d 1824 1568 -o $@

renders/gr_california.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 36.008 -118.393 -z 7 -d 1824 1568 -o $@

renders/gr_eastcoast.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 40.102 -75.258 -z 8 -d 1824 1568 -o $@

renders/gr_eastcoast2.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 40.731 -75.514 -z 7 -d 1824 1568 -o $@

renders/gr_brazil.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l -23.261 -45.453 -z 8 -d 1824 1568 -o $@

renders/gr_lagos.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 6.398 2.857 -z 7 -d 1824 1568 -o $@

renders/gr_lagos2.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 5.863 2.368 -z 6 -d 1824 1568 -o $@

renders/gr_israel.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 33.455 34.420 -z 7 -d 1824 1568 -o $@

renders/gr_lowlands2.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 52.586 8.746 -z 7 -d 1824 1568 -o $@

renders/gr_london.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 51.758 -0.326 -z 8 -d 1824 1568 -o $@

renders/gr_sydney.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l -36.123 148.203 -z 7 -d 1824 1568 -o $@

renders/gr_canberra.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l -32.938 147.605 -z 6 -d 1824 1568 -o $@

renders/gr_tokyo.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 35.686 137.912 -z 8 -d 1824 1568 -o $@

renders/gr_japan.png: style.xml
	python mapnik-render.py -f fonts -s style.xml -l 36.122 137.091 -z 7 -d 1824 1568 -o $@


style.xml: style.mml stylesheet.mss
	cascadenik-compile.py style.mml $@
	chmod a+r $@

clean:
	rm -f style.xml
	rm -f renders/gr_*-*.png