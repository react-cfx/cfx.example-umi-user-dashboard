export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

dev:
	env umi dev

static:
	env COMPRESS=none umi build
