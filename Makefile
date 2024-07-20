PREFIX=docker-compose --file stack.yml
DEV_PREFIX=$(PREFIX) --file stack.dev.yml

.PHONY: dev_build dev_up dev_down build up donw

dev_build:
	$(DEV_PREFIX) build

dev_up:
	$(DEV_PREFIX) up

dev_down:
	$(DEV_PREFIX) down

build:
	$(PREFIX) build

up:
	$(PREFIX) up

down:
	$(PREFIX) down
