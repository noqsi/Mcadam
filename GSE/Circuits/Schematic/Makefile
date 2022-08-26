SCH= GSEboard.1.sch GSEboard.2.sch
PDFS= GSEboard.1.pdf GSEboard.2.pdf

# And definitions to assemble the documentation

%.pdf : %.sch
	lepton-cli export --paper=na_letter -o $@ $<

.PHONY : all check

all : check GSEboard.pdf GSEboard.bom.txt GSEboard.bom2.txt GSEboard.osm

check : $(SCH)
	lepton-netlist -L../../../Circuits/Scripts/ -g check-pincount $(SCH)
	lepton-netlist -L../../../Circuits/Scripts/ -g check-duplicates $(SCH)

GSEboard.pdf : $(PDFS)
	pdftk $(PDFS) cat output GSEboard.pdf

GSEboard.bom.txt : $(SCH)
	lepton-netlist -g bom $(SCH) -o $@

GSEboard.bom2.txt : $(SCH)
	lepton-netlist -g bom2 $(SCH) -o $@

GSEboard.osm : $(SCH)
	lepton-netlist -g osmond $(SCH) -o $@

clean : 
	rm -rf *.ps *.pdf *.bom.txt *.bom2.txt *.net.txt \#* *~ *.psch *.log *.osm *.net exports
