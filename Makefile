DOCS = index projects/fmn/fmn projects/fapl/fapl projects/dbc/dbc
COMPILER = jemdoc.py
CONF= mysite.conf

HDOCS=$(addsuffix .html, $(DOCS))

.PHONY: all
all : $(HDOCS)

%.html: %.jemdoc
	python $(COMPILER) -c $(CONF) -o $@ $<


.PHONY: clean
clean:
	-rm -f $(HDOCS)