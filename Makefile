
SRCS=frog.tex $(wildcard lib/*.tex) $(wildcard text/*.tex)
TMP=tmp
VER=$(TMP)/version.tex

.PHONY: clean tmp/version.tex
all: frog.pdf

$(VER): $(SRCS) .git/index
	mkdir -p $(TMP)
	git describe --tags --always --dirty > $@.tmp
	mv $@.tmp $@

frog.pdf: $(SRCS) $(VER)
	latexmk frog
	touch $@ # make make happy

clean:
	latexmk -C
	rm -fr $(TMP)
