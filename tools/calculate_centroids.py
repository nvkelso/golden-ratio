# I had errors using this script
# http://www.kralidis.ca/blog/2010/04/28/batch-centroid-calculations-with-python-and-ogr/

import sys
import osgeo.ogr as ogr

# process args
if len(sys.argv) < 4:
    print 'Usage: %s <format> <input> <output>' % sys.argv[0]
    sys.exit(1)

# open input file
dataset_in = ogr.Open(sys.argv[2])
if dataset_in is None:
    print 'Open failed.\n'
    sys.exit(2)

layer_in = dataset_in.GetLayer(0)
feature_in = layer_in.GetNextFeature()

# create output
driver_out = ogr.GetDriverByName(sys.argv[1])
if driver_out is None:
    print '%s driver not available.\n' % sys.argv[1]
    sys.exit(3)

dataset_out = driver_out.CreateDataSource(sys.argv[3])
if dataset_out is None:
    print 'Creation of output file failed.\n'
    sys.exit(4)

layer_out = dataset_out.CreateLayer(sys.argv[3], None, ogr.wkbPoint)
if layer_out is None:
    print 'Layer creation failed.\n'
    sys.exit(5)

# setup attributes
feature_in_defn = layer_in.GetLayerDefn()

for i in range(feature_in_defn.GetFieldCount()):
    field_def = feature_in_defn.GetFieldDefn(i)
    if layer_out.CreateField(field_def) != 0:
        print 'Creating %s field failed.\n' % field_def.GetNameRef()

layer_in.ResetReading()
feature_in = layer_in.GetNextFeature()

# loop over input features, calculate centroid and output features
while feature_in is not None:
    feature_out_defn = layer_out.GetLayerDefn()
    feature_out = ogr.Feature(feature_out_defn)
    for i in range(feature_out_defn.GetFieldCount()):
        try:
        #if feature_in is not "NoneType" :
            feature_out.SetField( feature_out_defn.GetFieldDefn(i).GetNameRef(), feature_in.GetField(i) )
            geom = feature_in.GetGeometryRef()
            centroid = geom.Centroid()
            feature_out.SetGeometry(centroid)
            if layer_out.CreateFeature(feature_out) != 0:
                print 'Failed to create feature.\n'
                sys.exit(6)
        except:
            print "Oops!"
        feature_in = layer_in.GetNextFeature()

# cleanup
dataset_in.Destroy()
dataset_out.Destroy()