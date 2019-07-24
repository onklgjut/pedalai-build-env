.PHONY: all
all:
	@echo Help:
	@echo
	@echo make build   -- build container
	@echo make run     -- run container
	@echo make console -- open new console

.PHONY: build
build:
	docker-compose build

.PHONY: run
run:
	docker-compose up -d build-env

.PHONY: console
console:
	docker-compose exec build-env /bin/bash
