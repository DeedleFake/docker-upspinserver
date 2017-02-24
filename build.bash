#!/usr/bin/env bash

name="$1"
if [[ -z "$name" ]]; then
	name="deedlefake/upspinserver"
fi

vol="$(cd "$(dirname "$BASH_SOURCE")" && pwd)"
echo "Building in $vol..."

docker run --rm -e CGO_ENABLED=0 -v "$vol:/go" golang go get -u upspin.io/cmd/upspinserver

docker build -t "$name" .
