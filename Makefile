install:
	yarn install

build:
	mkdir -p dist
	cp src/templates/header.html dist/index.html
	node_modules/.bin/marked src/pages/index.md >> dist/index.html
	cat src/templates/footer.html >> dist/index.html
	cp -r src/media dist/
	cp -r src/admin dist/admin

clean:
	rm -rf dist
