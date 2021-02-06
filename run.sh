#!/bin/bash
set -uo pipefail

function run_container() {
	docker run --rm --env-file="$1" -e MONITORING_WORKER_ID="get-worker-id-from-configuration-service" -v "$2":"$3" "$4" &
}

env_dir="./env"
logs_path="$(pwd)/log/worker"
container_logs_path="/home/user/log"
monitoring_worker_image="gruz0/monitoring-worker:latest"

for env_file in "${env_dir}"/*.env
do
	run_container "$env_file" "$logs_path" "$container_logs_path" "$monitoring_worker_image"
done
