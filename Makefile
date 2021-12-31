PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
SHELL=bash
GENGETOPTIONS=gengetoptions

.PHONY: build clean check test testall coverage install uninstall

build: bin/credential-gpg

clean:
	rm -f bin/credential-gpg

#check:
#	shellcheck src/* lib/*.sh spec/*.sh examples/*.sh

#test:
#	shellspec

#testall:
#	shellspec -s sh
#	shellspec -s bash
#	shellspec -s 'busybox ash'
#	shellspec -s ksh
#	shellspec -s mksh
#	shellspec -s posh
#	shellspec -s yash
#	shellspec -s zsh

#coverage:
#	shellspec -s bash --kcov --kcov-options "--coveralls-id=$(COVERALLS_REPO_TOKEN)"
#	bash <(curl -s https://codecov.io/bash) -s coverage

install: build
	mkdir -p $(BINDIR)
	install -m 755 bin/credential-gpg $(BINDIR)/credential-gpg
	[ -e $(BINDIR)/git-credential-gpg ] || ln -s $(BINDIR)/credential-gpg $(BINDIR)/git-credential-gpg

uninstall:
	[ ! -e $(BINDIR)/git-credential-gpg ] || unlink $(BINDIR)/git-credential-gpg
	rm -f $(BINDIR)/credential-gpg

bin/credential-gpg:
	mkdir -p bin
	cp src/credential-gpg bin/credential-gpg
	$(GENGETOPTIONS) embed --overwrite bin/credential-gpg
