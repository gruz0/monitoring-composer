up-database:
	docker-compose up db

up-configuration-service:
	docker-compose up configuration-service

fetch-configuration:
	docker-compose up configuration-fetcher

run:
	./run.sh

.PHONY: up-database up-configuration-service fetch-configuration run
