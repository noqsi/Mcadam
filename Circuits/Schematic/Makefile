SCH= MPU.1.sch	MPU.2.sch	MPU.3.sch	MPU.4.sch MPU.5.sch

FPM=FPM.1.sch FPM.2.sch

SUBSCH=  FastShaper.1.sch FastShaper.2.sch HV.sch HVregulator.sch \
	PerFPM.sch Reference.sch SlowShaper.1.sch SlowShaper.2.sch TECregulator.sch
 
PSCHS= ProASICpins.tsv Jdb.tsv  Jtp.tsv
PSCH= ProASICpins.psch Jdb.psch  Jtp.psch

TOP=$(SCH) $(PSCH)

FPMPDF= FPM.1.pdf FPM.2.pdf

MPUPDF= MPU.1.pdf MPU.2.pdf MPU.3.pdf MPU.4.pdf MPU.5.pdf PerFPM.pdf \
	FastShaper.1.pdf FastShaper.2.pdf SlowShaper.1.pdf \
	SlowShaper.2.pdf TECregulator.pdf HVregulator.pdf \
	Reference.pdf HV.pdf
	

ALLSRC= Makefile gafrc attribs $(SCH) $(SUBSCH) $(PSCHS) $(FPM)
 
EXPORTS= FPM.bom.txt MPU.bom.txt $(PDF)

# And definitions to assemble the documentation

%.pdf : %.sch
	lepton-cli export --paper=na_letter -o $@ $<

# Pin maps

%.psch : %.tsv
	awk -f ../Scripts/pins2gsch.awk $^ >$@

.PHONY : all check

all : check MPU.pdf MPU.osm MPU.bom.txt MPU.bom2.txt MPU.screaming.tsv \
	FPM.pdf FPM.bom.txt FPM.bom2.txt FPM.osm FPM.screaming.tsv

check : $(ALLSRC) $(PSCH)
	lepton-netlist -L../Scripts -g check-pincount $(FPM)
	lepton-netlist -L../Scripts -g check-duplicates $(FPM)
	lepton-netlist -L../Scripts -g check-pincount $(TOP)
	lepton-netlist -L../Scripts -g check-duplicates $(TOP)

MPU.osm : $(ALLSRC) $(PSCH)
	lepton-netlist -g osmond $(TOP) -o $@

MPU.bom.txt : $(ALLSRC)
	lepton-netlist -g bom $(SCH) -o $@

MPU.bom2.txt : $(ALLSRC)
	lepton-netlist -g bom2 $(SCH) -o $@

MPU.screaming.tsv : parts.tsv MPU.bom.txt
	awk -f ../Scripts/ScreamingBOM.awk parts.tsv MPU.bom.txt >MPU.screaming.tsv

MPU.LEXA_BOM.tsv : parts.tsv MPU.bom2.txt
	awk -f ../Scripts/LEXA_BOM.awk parts.tsv MPU.bom2.txt >MPU.LEXA_BOM.tsv

MPU.pdf : $(MPUPDF)
	pdftk $(MPUPDF) cat output MPU.pdf
	
FPM.osm : $(ALLSRC) $(PSCH)
	lepton-netlist -g osmond $(FPM) -o $@

FPM.bom.txt : $(ALLSRC)
	lepton-netlist -g bom $(FPM) -o $@

FPM.bom2.txt : $(ALLSRC)
	lepton-netlist -g bom2 $(FPM) -o $@

FPM.screaming.tsv : parts.tsv FPM.bom.txt
	awk -f ../Scripts/ScreamingBOM.awk parts.tsv FPM.bom.txt >FPM.screaming.tsv
	
FPM.pdf : $(FPMPDF)
	pdftk $(FPMPDF) cat output FPM.pdf
clean : 
	rm -rf *.ps *.pdf *.bom.txt *.bom2.txt *.net.txt \#* *~ *.psch *.log *.osm *.net exports
