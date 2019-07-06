clean:
	-rm -rf ./build

publish:
	mkdir -p ./build
	# TODO: use a static site generator
	pandoc --self-contained --standalone README.md -c static/pandoc.css --metadata=title:"DSS Extensions: multi-platform OpenDSS extensions" -o build/index.html

deploy: clean publish
	-git branch -D master
	-git push -fq https://${GH_TOKEN}@github.com/dss-extensions/dss-extensions.github.io --delete master
	ghp-import -n -c "dss-extensions.org" -m "Publishing pages" -b "master" build
	git push -fq https://${GH_TOKEN}@github.com/dss-extensions/dss-extensions.github.io master

