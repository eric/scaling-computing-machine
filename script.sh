#!/bin/sh

set -x

s3_1_ip=$(host s3-1.amazonaws.com | awk '/has address/ { print $4 }')
s3_2_ip=$(host s3-2.amazonaws.com | awk '/has address/ { print $4 }')

echo "s3.amazonaws.com"

curl -o /dev/null http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

echo "s3-1.amazonaws.com"
curl -o /dev/null --resolve s3.amazonaws.com:80:$s3_1_ip http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

echo "s3-2.amazonaws.com"
curl -o /dev/null --resolve s3.amazonaws.com:80:$s3_2_ip http://s3.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

traceroute -A s3.amazonaws.com

traceroute -A s3-1.amazonaws.com

traceroute -A s3-2.amazonaws.com


# curl -o /dev/null http://s3-1.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip
# 
# curl -o /dev/null http://s3-2.amazonaws.com/highspot_artifacts/zipfiles/solr-4.2.1.zip

# sudo sbin/pchar -s 2 -v -d 1 s3.amazonaws.com

