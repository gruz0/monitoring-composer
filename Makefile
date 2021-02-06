up-databases:
	docker-compose up configuration-service-db

up-configuration-service:
	docker-compose up configuration-service

fetch-configuration:
	docker-compose up configuration-fetcher

run:
	./run.sh

clean:
	rm -rf ./volumes/*-db-data*
	docker-compose down --remove-orphans
	docker-compose rm -f

.PHONY: up-database up-configuration-service fetch-configuration run clean
