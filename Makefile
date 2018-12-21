# Disable default implicit rules
MAKEFLAGS += -r
.SUFFIXES:

lean_files:=$(wildcard *.lean)
html_files:=$(lean_files:%.lean=tmp/%.html)

index.html: input.html $(html_files)
	m4 input.html > index.html

$(html_files): tmp/%.html: %.lean
	pygmentize -f html $< > $@

