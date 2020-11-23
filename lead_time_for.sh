#!/usr/bin/env bash

git clone "$1" repo

TIMESTAMP=$(date --date="$2 00:00:00" +"%s")
python3 calculate_four_metrics.py lead-time --start-date="$TIMESTAMP" --deploy-tag-pattern="deploy-*" repo
