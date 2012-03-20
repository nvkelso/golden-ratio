![Zoom previews](https://github.com/nvkelso/golden-ratio/raw/master/images/zoom_start_east_coast.png)

_Legend: Grays = zooms 10 + 11, green = 12, light green = 13, yellow = 14, orange = 15, dark orange = 16, pink = 17, dark red = 18+_

**When pre-rendering the whole world is too much, render less. But which less?**

Land versus ocean is a basic proxy. But population and internet usage should also factor in.

We proxy which tiles are important by looking at:

* Twitter Geocoded tweets
* Flickr photo sharing
* GeoIP addresses
* General population density

This first version is just for Twitter proxy.

The data you want is in:

* data/twitter_bbox.tsv

Initial version uses Twitter geotagged tweet density "binary world" bounding boxes curtsey of Eric Fischer.

http://www.flickr.com/photos/walkingsf/6159680639/in/photostream/

Later versions will include more proxies and refine the regions and country tagging.

You should see savings of 80% to 99% in which tiles get rendered from zoom 11 in.

For more image previews, see: http://www.flickr.com/photos/ke6cat/sets/72157629625222031/