#!/usr/bin/env bash

# win_amd64
WHEELHOUSE=wheelhouse
VERSIONS="38 39 310 311 312"

rm -rf $WHEELHOUSE
for version in $VERSIONS
do
    mkdir -p $WHEELHOUSE && \
    pip download -r requirements.txt -d $WHEELHOUSE \
    --quiet \
    --only-binary=:all: --platform=macosx_10_6_x86_64 \
    --python-version=$version --abi=cp$version
done
