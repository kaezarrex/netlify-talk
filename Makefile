install:
	yarn install

build:
	mkdir -p dist
	cp src/templates/header.html dist/index.html
	node_modules/.bin/marked src/pages/index.md >> dist/index.html
	cat src/templates/footer.html >> dist/index.html
	cp src/templates/header.html dist/contact.html
	node_modules/.bin/marked src/pages/contact.md >> dist/contact.html
	cat src/templates/footer.html >> dist/contact.html
	cp -r src/media dist/
	cp -r src/admin dist/admin

clean:
	rm -rf dist
