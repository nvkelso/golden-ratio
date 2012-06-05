import sys, math
import os, stat

try:
    prog, filename, num_parts = sys.argv
except ValueError:
    print >> sys.stderr, 'usage: %(prog) <filename> <num_parts>' % locals()
    sys.exit(1)
    
filename_base = filename.split('.').pop(0)
num_parts = int(num_parts)

fp = open(filename, 'r')
content = fp.read()
lines = content.split('\n')

header = """#!/bin/sh
"""

lines_per_file = int(math.ceil(len(lines) / num_parts))

for part in range(num_parts):
    part_filename = '%s_part%d.sh' % (filename_base, part + 1)
    print >> sys.stderr, "Working on part %d: %s" %  (part + 1, part_filename)
    
    part_lines = lines[0:lines_per_file]
    
    output = open(part_filename, 'w')
    print >> output, header
    print >> output, '\n'.join(part_lines)
    output.close()
    
    mode = os.stat(part_filename).st_mode
    os.chmod(part_filename, mode | stat.S_IXUSR | stat.S_IXGRP)
    
    lines = lines[lines_per_file:]