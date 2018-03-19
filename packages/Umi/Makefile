export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

dev:
	env ESLINT=none umi dev

static:
	env ESLINT=none COMPRESS=none umi build
