#!/bin/sh

set -x

traceroute s3.amazonaws.com

traceroute6 s3.amazonaws.com

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

sbin/pchar --help

sudo sbin/pchar s3.amazonaws.com

