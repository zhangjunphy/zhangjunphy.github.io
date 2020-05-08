all : publish

publish : publish.el $(wildcard posts/**/*) $(wildcard drafts/**/*) $(wildcard static/**/*)
	emacs --script publish.el
