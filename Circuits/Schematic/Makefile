SCH= Mcadam.1.sch	Mcadam.2.sch	Mcadam.3.sch	Mcadam.4.sch

SUBSCH= FPM.1.sch FPM.2.sch FastShaper.1.sch FastShaper.2.sch HV.sch HVregulator.sch \
	PerFPM.sch Reference.sch SlowShaper.1.sch SlowShaper.2.sch TECregulator.sch
 
PSCHS= ProASICpins.tsv
PSCH= ProASICpins.psch

PDF= FPM.1.pdf FPM.2.pdf FastShaper.1.pdf FastShaper.2.pdf HV.pdf HVregulator.pdf \
	Mcadam.1.pdf Mcadam.2.pdf Mcadam.3.pdf Mcadam.4.pdf PerFPM.pdf Reference.pdf \
	SlowShaper.1.pdf SlowShaper.2.pdf TECregulator.pdf

ALLSRC= Makefile gafrc attribs $(SCH) $(SCH) $(PSCHS)
 
EXPORTS= Mcadam.bom.txt $(PDF)

# And definitions to assemble the documentation

%.pdf : %.sch
	lepton-cli export --paper=na_letter -o $@ $<

# Pin maps

%.psch : %.tsv
	awk -f ../Scripts/pins2gsch.awk $^ >$@

all : $(PDF)

clean : 
	rm -rf *.ps *.pdf *.bom.txt *.net.txt \#* *~ *.psch *.log exports
