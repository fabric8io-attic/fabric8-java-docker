#!/usr/bin/env bash

echo "Starting the fabric8 container"
docker run -p 8080 -i -t fabric8:fabric8-java /bin/bash
