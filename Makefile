.PHONY: default build test

default: test

build: node_modules
	node_modules/.bin/tsc

test: node_modules
	node_modules/.bin/prettier --check **.{json,ts}
	node_modules/.bin/tslint --project .
	node_modules/.bin/jest

node_modules: package.json package-lock.json
	npm install
