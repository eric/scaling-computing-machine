#!/bin/sh

set -x

traceroute s3.amazonaws.com

pchar s3.amazonaws.com

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

scriptroute --help