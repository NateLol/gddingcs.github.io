#DOCS = index projects/fmn/fmn projects/fapl/fapl projects/dbc/dbc projects/cad/cad projects/semi/semi projects/mvreid/mvreid
DOCS = $(basename $(shell find . -name "*.jemdoc")) 
#COMPILER = jemdoc.py
COMPILER = jemdoc.py
CONF= mysite.conf

HDOCS=$(addsuffix .html, $(DOCS))

.PHONY: all
all : $(HDOCS)

%.html: %.jemdoc
	python $(COMPILER) -c $(CONF) -o $@ $<

.PHONY: upload
upload:
	git add .
	git commit -m "regular update"
	git push -u origin master

.PHONY: clean
clean:
	-rm -f $(HDOCS)