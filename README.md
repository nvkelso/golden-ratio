![Zoom previews](https://github.com/nvkelso/golden-ratio/raw/master/images/zoom_start_east_coast.png)

_Legend: Grays = zooms 10 + 11, green = 12, light green = 13, orange = 14, yellow = 15, dark orange = 16, pink = 17, dark red = 18+_

**When pre-rendering the whole world is too much, render less. But which less?**

Land versus ocean is a basic proxy. But population and internet usage should also factor in.

We proxy which tiles are important by looking at:

* Twitter Geocoded tweets
* Flickr photo sharing
* GeoIP addresses
* General population density

[READ MORE on the Stamen blog about Log Maps »](http://content.stamen.com/log_maps)

This first version is just for Twitter proxy.

The data you want is in:

* data/twitter_bbox.tsv

Initial version uses Twitter geotagged tweet density "binary world" bounding boxes curtsey of Eric Fischer.

http://www.flickr.com/photos/walkingsf/6159680639/in/photostream/

Later versions will include more proxies and refine the regions and country tagging. Also the ability to reference past tile view history (popularity) logs in addition to the existing forecasting ability.

For more image previews, see: http://www.flickr.com/photos/ke6cat/sets/72157629625222031/

You should see savings of 80% to 99% in which tiles get rendered from zoom 11 in.

***Example coverage:***

* Zoom 18 - Within 10 km of 70 global metros (DC but not Baltimore, SF but not San Jose, NYC but not Jersey)
* Zoom 17 - Within 20 km of 250 metros (DC and Baltimore, SF and San Jose, NYC and Jersey)
* Zoom 16 - Within 20 km of 2500 metro and micropolitan areas (picks up regional population centers like Santa Rosa CA, Harrisburg PA, Albany NY)
* Zoom 15 - Most core metro areas and their inner suburbs, bounding box area threshold
* Zoom 14 - Most core metro areas and their exurbs, bounding box area threshold
* Zoom 13 - Metro and micorpolitan areas in 12. Now less than 1% of land area.
* Zoom 12 - Most of NA, western Europe, elsewhere that are on the net. About 5% of land area and less than 2% of globe. 
* Zoom 11 - Not ocean, not unpopulated, is on the net. Ocean is about 71% of the surface: of the 29% of land, we're looking at just half of that.
* Zoom 0 through 10 - global

# Tools

##seed_splitter

Have 16 cores on your machine or need to render in the cloud? Split your large task list into accomplishable bits.

###Usage:

    python seed_splitter.py <filename> <num_parts>
    
Where `<num_parts>` might be the number of cores on your machine minus 1 (eg: 16-1=5).

##seed_parser

###Usage:

This script will generate a set of zoom-specific files with tilestache-seed
commands from a bounding box file.

    python seed_parser.py -t '-c /usr/local/tilefarm/gunicorn/tilestache-watercolor.cfg -l watercolor ' -b 'twitter_bbox.tsv'

##countTiles

###Usage:

    python countTiles.py

Default output for US (excluding Alaska and Hawaii):

    Geographic area:
        -126.900000	    left most Longitude     (minLong)
          22.200000	    bottom most Latitude    (minLat)
         -67.200000	    right most Longitude    (maxLong)
          50.000000	    top most Latitude       (maxLat)
    Zoom coverage:
        4	least detailed zoom
        14	most detailed zoom
    Total tiles:
        5,799,459 > 10,000,000
    
    SETUP cost: $71.74
    (One time cost: $13.75 storage, $57.99 posting)
    (Note: If there is a data update, apply this setup cost again.)
    
    MONTHLY viewing costs:
          10,000 visits: $    6.46,   with cloudfront: $    12.92
         250,000 visits: $  164.32,   with cloudfront: $   328.64
       1,000,000 visits: $  657.64,   with cloudfront: $ 1,315.29
      10,000,000 visits: $6,577.52,	  with cloudfront: $13,155.03
    
    (Assumption: Each map visitor will request 200 tiles (load map, pan pan pan pan pan)
    (Note: CloudFront is a distributed content delivery network that makes viewing your tiles faster...
        Amazon charges once for getting it out of the S3 bucket and into CF again for the CF view...
        If all the views are in the same spot, 1/2 the CF cost listed here. If viewing many random
        places,this value.)