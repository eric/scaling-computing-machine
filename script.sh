#!/bin/sh

set -x

traceroute s3.amazonaws.com

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

pchar s3.amazonaws.com

scriptroute --help
