#!/usr/bin/env bash
docker build . -f docker/openj9/Dockerfile -t arttuka/openj9-test:openj9
docker build . -f docker/hotspot/Dockerfile -t arttuka/openj9-test:hotspot
