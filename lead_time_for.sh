#!/usr/bin/env bash

git clone $1 repo

python3 calculate_four_metrics.py lead-time --start-date=$2 --deploy-tag-pattern="deploy-*" repo
