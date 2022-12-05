
SRCS=frog.tex $(wildcard lib/*.tex) $(wildcard text/*.tex)
TMP=tmp
VER=$(TMP)/version.tex

.PHONY: clean $(VER)
all: frog.pdf

$(VER): $(SRCS) .git/index
	mkdir -p $(TMP)
	echo '\\def\\frogspecversion{'`git describe --tags --always --dirty`'}' > $@.tmp
	echo '\\def\\frogspeccommit{'`git rev-parse HEAD`'}' >> $@.tmp
	mv $@.tmp $@

frog.pdf: $(SRCS) $(VER)
	latexmk frog
	touch $@ # make make happy

clean:
	latexmk -C
	rm -fr $(TMP)
