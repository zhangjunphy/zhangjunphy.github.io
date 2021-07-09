all : publish

publish : publish.el $(wildcard posts/**/*) $(wildcard drafts/**/*) $(wildcard static/**/*)
	emacs -q --script publish.el

.PHONY : clean
clean :
	-rm *.html
