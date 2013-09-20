#!/bin/sh

set -x

traceroute -A s3.amazonaws.com

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

sudo sbin/pchar -s 2 -v s3.amazonaws.com

