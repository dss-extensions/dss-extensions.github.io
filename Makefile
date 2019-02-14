clean:
	-rm -rf ./build

publish:
	mkdir -p ./build
	# TODO: use a static site generator
	pandoc --self-contained --standalone README.md -c static/github.css -o build/index.html

deploy: clean publish
	ghp-import -n -c "dss-extensions.org" -m "Publishing pages" -p -f -b "master" build

