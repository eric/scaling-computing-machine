#!/bin/sh

set -x

traceroute -A s3.amazonaws.com

traceroute -A s3-1.amazonaws.com

traceroute -A s3-2.amazonaws.com

ping -c 20 -i 0.2 s3.amazonaws.com

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

# sudo sbin/pchar -s 2 -v -d 1 s3.amazonaws.com

