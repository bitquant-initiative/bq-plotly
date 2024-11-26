#!/bin/bash

set -e

docker build . -t bq-plotly -t if6was9/bq-plotly
docker push if6was9/bq-plotly
