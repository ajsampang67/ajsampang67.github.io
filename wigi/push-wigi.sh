#!/bin/sh
fileId="1-ZJmWQuCURR-nydgmvJRUeRvO6Se3oQdeyDyD1-uz50"
curl -L "https://docs.google.com/spreadsheets/d/${fileId}/export?exportFormat=csv" > wigiLocations.csv
mv wigiLocations.csv assets/
docker build -t ajsampang67/wigi . && docker push ajsampang67/wigi
