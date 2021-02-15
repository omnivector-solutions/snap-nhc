#!/bin/bash

set -e

stage=$1
snapname=$2

s3_loc="s3://omnivector-public-assets/snaps/nhc/$stage/$snapname"
echo "Copying $s3_loc to ."
aws s3 cp $s3_loc ./nhc.snap
