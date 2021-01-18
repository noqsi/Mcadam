SCH= Mcadam.1.sch	Mcadam.2.sch	Mcadam.3.sch	Mcadam.4.sch

FPM=FPM.1.sch FPM.2.sch

SUBSCH=  FastShaper.1.sch FastShaper.2.sch HV.sch HVregulator.sch \
	PerFPM.sch Reference.sch SlowShaper.1.sch SlowShaper.2.sch TECregulator.sch
 
PSCHS= ProASICpins.tsv
PSCH= ProASICpins.psch

TOP=$(SCH) $(PSCH)

PDF= FPM.1.pdf FPM.2.pdf FastShaper.1.pdf FastShaper.2.pdf HV.pdf HVregulator.pdf \
	Mcadam.1.pdf Mcadam.2.pdf Mcadam.3.pdf Mcadam.4.pdf PerFPM.pdf Reference.pdf \
	SlowShaper.1.pdf SlowShaper.2.pdf TECregulator.pdf

ALLSRC= Makefile gafrc attribs $(SCH) $(SUBSCH) $(PSCHS) $(FPM)
 
EXPORTS= FPM.bom.txt Mcadam.bom.txt $(PDF)

# And definitions to assemble the documentation

%.pdf : %.sch
	lepton-cli export --paper=na_letter -o $@ $<

# Pin maps

%.psch : %.tsv
	awk -f ../Scripts/pins2gsch.awk $^ >$@

.PHONY : all check

all : check $(PDF) Mcadam.osm Mcadam.bom.txt Mcadam.bom2.txt \
	FPM.bom.txt FPM.bom2.txt FPM.osm

check : $(ALLSRC) $(PSCH)
	lepton-netlist -L../Scripts -g check-pincount $(FPM)
	lepton-netlist -L../Scripts -g check-duplicates $(FPM)
	lepton-netlist -L../Scripts -g check-pincount $(TOP)
	lepton-netlist -L../Scripts -g check-duplicates $(TOP)

Mcadam.osm : $(ALLSRC) $(PSCH)
	lepton-netlist -g osmond $(TOP) -o $@

Mcadam.bom.txt : $(ALLSRC)
	lepton-netlist -g bom $(SCH) -o $@

Mcadam.bom2.txt : $(ALLSRC)
	lepton-netlist -g bom2 $(SCH) -o $@

FPM.osm : $(ALLSRC) $(PSCH)
	lepton-netlist -g osmond $(FPM) -o $@

FPM.bom.txt : $(ALLSRC)
	lepton-netlist -g bom $(FPM) -o $@

FPM.bom2.txt : $(ALLSRC)
	lepton-netlist -g bom2 $(FPM) -o $@

clean : 
	rm -rf *.ps *.pdf *.bom.txt *.bom2.txt *.net.txt \#* *~ *.psch *.log *.osm *.net exports
