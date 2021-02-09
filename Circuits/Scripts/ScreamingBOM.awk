#
# Make a Screaming Circuits BOM from a lepton bom and part # databases.
#
# Usage: awk -f ScreamingBOM.awk db1 [db2 ...] bom
#
# Format of the databases (Fields separated by tabs):
# 	
# device	value	spec	footprint	vendor	part# note
#
# Format of the input BOM (Fields separated by tabs):
#
# refdes	device	value	spec	footprint	description
# (first line is column headers)
# ("lepton-netlist -g bom" can make this)
#
# Format of the output BOM (Fields separated by tabs):
#
# refdes	device	value	spec	footprint	description	Digikey part number	Notes	Price
# (first line is column headers)
# (description is the concatenation of the input device, value, spec, and footprint)
# (notes used for non-digikey parts)
# (if the value is "omit", the part will not appear in the output)
# (if part number is missing from the database, it will be **MISSING** in the output)


BEGIN{
	TAB = "\t"
	FS=TAB 
	print "refdes	device	value	spec	footprint	description	Digikey part number	Notes	Price"
}

/^#/{next}	# ignore comment lines

/^$/{next}	# ignore blank lines

/^refdes/{
	bom = 1		# seen BOM header, now reading BOM
	next
}

# If we're not reading the BOM, we're reading a database

!bom {
	key = $1 FS $2 FS $3 FS $4
	vendor[ key ] = $5
	part[ key ] = $6
	note[ key ] = $7
	next
}

{
	refdes = $1
	device = $2
	value = $3
	spec = $4
	footprint = $5
	description = $6
	
	if( value == "omit" ) next
	
	key = device TAB value TAB spec TAB footprint
	
	thisvendor = vendor[key]
	thispart = part[key]
	if( !thispart ) thispart = "**MISSING**"
	if( thisvendor == "Digikey") {
		digipn = thispart;
		notes = "";
	} else {
		digipn = "N/A";
		notes = thisvendor " " thispart
	}
	
	if( note[key] ) notes = notes " " note[key];
	
	if( value != "unknown" && value != "N/A" ) 
		description = description " " value;
	if( spec != "unknown" && spec != "N/A" ) 
		description = description " " spec;
	if( footprint != "unknown" && footprint != "N/A" ) 
		description = description " " footprint;
		
	print refdes TAB device TAB value TAB spec TAB footprint TAB description TAB digipn TAB notes
}
