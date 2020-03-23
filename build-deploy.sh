#!/bin/sh

set -e

echo "== BUILDING THE APP =="
yarn build

echo "== CONFIGURING REDIRECTS  =="
if [ "$CONTEXT" = "production" ]; then
  cp production_redirects dist/_redirects
else
  cp staging_redirects dist/_redirects
fi
