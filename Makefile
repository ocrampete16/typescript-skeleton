.PHONY: build test

default: test

build:
	node_modules/.bin/tsc

test:
	node_modules/.bin/prettier --check **.{json,ts}
	node_modules/.bin/tslint --project .
	node_modules/.bin/jest
