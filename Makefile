all: build

build:
	./build.sh

view: build
	xdg-open index.html

quick-push:
	./build.sh
	git add index.html links.html facts.md links.md Makefile build.sh head.html number.py facts_copypasta.md
	git commit -m "update"
	git push
