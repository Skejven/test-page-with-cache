#!/bin/bash

imageVersion="13.3.2"

urlToTest=https://www.sitespeed.io/support/

echo "*******************************"
echo "*********** preURL ************"
echo "*******************************"
docker run --shm-size=2g --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:${imageVersion} \
    --preURL ${urlToTest}?warmup=true \
    --urlAlias Homepage ${urlToTest}

echo "*******************************"
echo "********* preScript ***********"
echo "*******************************"
docker run --shm-size=2g --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:${imageVersion} \
    --preScript warm_up_cache.js --browsertime.urlToWarmUp ${urlToTest} \
    --urlAlias Homepage ${urlToTest}

echo "*******************************"
echo "********* mixed ***********"
echo "*******************************"
docker run --shm-size=2g --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:${imageVersion} \
    --preURL ${urlToTest}?warmup=true \
    --preScript clear_view.js \
    --urlAlias Homepage ${urlToTest}
