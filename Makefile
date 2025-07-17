# Default .env file
ENV ?= dev
.PHONY: test

setup:
	flutter pub get

run-chrome: 
	./scripts/run.sh $(ENV) chrome
	setup

run: 
	./scripts/run.sh $(ENV)
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
	flutter test --dart-define=ENV=dev
	setup

lint:
	flutter analyze

clean:
	flutter clean

build:
	flutter build apk --dart-define=ENV=$(ENV)
