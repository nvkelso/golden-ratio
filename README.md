![Zoom previews](https://github.com/nvkelso/golden-ratio/raw/master/images/zoom_start_nor_cal.png)

_Image explanation: Red = zoom 10, orange = zoom 11, yellow = zoom 12, green = zoom 13/14, blue = zoom 15+_

**When pre-rendering the whole world is too much, render less. But which less?**

Land versus ocean is a basic proxy. But population and internet usage should also factor in.

We proxy which tiles are important by looking at:

* Flickr photo sharing
* GeoIP addresses
* Twitter Geocoded tweets
* General population density

This first version is just for Flickr proxy.

The data you want is in:

* data/flickr_bbox.tsv

Initial version uses Flickr photo density "binary world" bounding boxes curtesey of Eric Fischer.

http://www.flickr.com/photos/walkingsf/6159680639/in/photostream/

Later versions will include more proxies and refine the regions and country tagging.

You should see savings of 80% to 99% in which tiles get rendered from zoom 11 in.