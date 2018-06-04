export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk

# dev:
# 	env umi dev

static:
	env COMPRESS=none umi build

serve:
	serve -p 8000 ./dist/

# umibuild: build
# 	cp public/pages/document.html src/pages/document.ejs

# umirebuild: rebuild
# 	cp public/pages/document.html src/pages/document.ejs

dev:
	umi dev

