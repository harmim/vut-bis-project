DOC := doc.pdf
DOC_DIR := doc
SECRETS := secrets.txt
PACK := xharmi00.tar.gz


.PHONY: pack
pack: $(PACK)

$(PACK):
	cp $(DOC_DIR)/$(DOC) .
	tar -czf $@ $(DOC) $(SECRETS)
	rm $(DOC)


.PHONY: clean
clean:
	rm -f $(DOC) $(PACK)
