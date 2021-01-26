#!/bin/bash
set -uo pipefail

env_dir="./env"

for env_file in "${env_dir}"/*.env
do
	docker run -it --rm --env-file="$env_file" gruz0/monitoring-worker:latest
done
