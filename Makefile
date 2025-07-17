# Default .env file
ENV ?= dev

.PHONY: test

setup:
	flutter pub get


run: 
	./scripts/run.sh $(ENV)
	setup

run-chrome: 
	./scripts/run.sh $(ENV) chrome
	setup

	
prev: 
	./scripts/run.sh prev
	setup

prev-chrome: 
	./scripts/run.sh prev chrome
	setup

run-dev: 
	./scripts/run.sh dev
	setup

run-prod:
	./scripts/run.sh prod
	setup

test: 
	./scripts/run.sh test

clean:
	flutter clean

build:
	flutter build apk --dart-define=ENV=$(ENV)
