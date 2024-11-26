#!/bin/bash

mkdir -p ./task/data
mkdir -p ./task/output
rm -rf ./task/output/*
if [[ ! -f "./task/chart.py" ]]; then
    echo "copying sample-chart.py to ./task/chart.py"
    cp sample-chart.py ./task/chart.py
fi

docker run --entrypoint "/entrypoint.sh" -v ./task:/var/task -it bq-plotly

OUTPUT_FILE=$(find ./task/output -type f | head -1)

open ${OUTPUT_FILE}