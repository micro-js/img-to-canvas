#
# Vars
#

BIN = ./node_modules/.bin

#
# Tasks
#

node_modules: package.json
	@npm install

test: $(src) $(tests) node_modules
	@NODE_ENV=development hihat test/*.js -- \
		--debug \
		-p tap-dev-tool

validate: node_modules
	@standard

init:
	@git init
	@git add .
	@git commit -am "FIRST"
	@hub create micro-js/img-to-canvas -d "Convert an img tag to a canvas element where it can be manipulated"
	@travis enable
	@git push -u origin master

.PHONY: test validate init
