ANOLIS = anolis

all: Overview.html

Overview.html: Overview.src.html ../xref Makefile
	$(ANOLIS) --omit-optional-tags --quote-attr-values \
	--enable=xspecxref --enable=refs --xref="../xref" \
	--w3c-shortname="quirks-mode" --filter=".not-draft" $< $@

tr: Overview.src.html ../xref Makefile
	$(ANOLIS) --output-encoding=ascii --omit-optional-tags --quote-attr-values --xref="../xref" \
	--w3c-compat-substitutions --enable=xspecxref --enable=refs --w3c-shortname="quirks-mode" \
	--filter=".not-tr" --pubdate="$(PUBDATE)" --w3c-status=WD \
	$< TR.html

fs: Overview.src.html ../xref Makefile
	$(ANOLIS) --omit-optional-tags --quote-attr-values --xref="../xref" \
	--enable=xspecxref --enable=refs --w3c-shortname="quirks-mode" \
	--filter=".not-fs" --pubdate="$(PUBDATE)" \
	$< FS.html
