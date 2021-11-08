OCBFLAGS := -use-menhir -yaccflags --strict,--explain
OCB := ocamlbuild $(OCBFLAGS)

.PHONY: all debug clean top profile

all: fun.byte tc.byte cc.byte
debug: all 

%.cma: .FORCE
	$(OCB) $@

%.cmxa: .FORCE
	$(OCB) $@

%.native: .FORCE
	$(OCB) $@

%.byte: .FORCE
	$(OCB) $@

.FORCE:

clean:
	$(OCB) -clean

top: fun.byte tc.byte cc.byte
	utop

