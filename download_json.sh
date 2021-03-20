#!/usr/bin/env sh

set -o errexit
set -o nounset

NOW=$(date +"%m-%d-%Y")

BOUNDARIES="https://services3.arcgis.com/T4QMspbfLg3qTGWY/ArcGIS/rest/services/Public_Wildfire_Perimeters_View/FeatureServer/0"

QUERY="query?f=json&returnGeometry=true&outFields=*&where=1=1"

# Download the fire permitters data
curl \
  "$BOUNDARIES$QUERY" \
  -o data/districts-$NOW.json
