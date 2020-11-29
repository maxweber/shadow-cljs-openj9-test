#!/usr/bin/env bash

mkdir -p ./.m2 ./build/openj9
docker run --rm -i \
    -p 9500:9500 \
    -p 9630:9630 \
    -v $(pwd)/build/openj9:/app/resources/public/js \
    -v $(pwd)/.m2:/root/.m2 \
    -v $(pwd)/src:/app/src \
    -v $(pwd)/shadow-cljs.edn:/app/shadow-cljs.edn \
    arttuka/openj9-test:openj9
