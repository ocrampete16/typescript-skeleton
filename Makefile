.PHONY: build test

default: test

build:
	node_modules/.bin/tsc

test:
	node_modules/.bin/prettier --check src/* test/*
	node_modules/.bin/jest
