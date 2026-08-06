Adapted from: [SOP_MDE_Metabarcoding Standard Genetic Methods (November2021).pdf](https://github.com/SERCCoastalDisease/Protocols/blob/main/SOP_MDE_Metabarcoding%20Standard%20Genetic%20Methods%20(November2021).pdf)

Reagent calculation spreadsheet: [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=909202954#gid=909202954)

==**All steps after the first PCR must be done in the post-PCR room (614)==**

Last updated: August 6, 2026 JF

## I. First PCR
### Notes
- All of the following first PCR protocol should be done in a BSC in 504
- Repeat each sample in triplicate (3x)
- Always include water (negative control) in every run
- Use aliquoted primers, water, and dNTPs (limits contamination)
- **DO NOT** vortex albumin or hot start polymerase
	-  DNA polymerase should never be left at room temperature - stays in freezer or in freezer box
- Use the [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=909202954#gid=909202954) spreadsheet, and copy the final table into your lab notebook
- Make sure to note which primer you are using each day (0N, 1N, 2N, 3N)

### 0. Prep
- Thaw reaction buffer, dNTPs, primers, and DNA samples
	- Once thawed, gently vortex and spin these down
- Number each DNA sample sequentially in your lab notebook—this is how the PCR tubes will be identified
- Bleach the BSC workspace, pipettes, and tube racks
- UV-sterilize open 8-strip PCR tubes, water aliquot, and 1.5mL master mix tube
	- **DO NOT** expose primers or DNA to the UV light
- Label tubes

### 1. Protocol
1. Create master mix, adding appropriate volumes of each reagent in this order: buffer, dNTPs, forward primer, reverse primer, albumin, DNA polymerase, and water
	- Make sure to thoroughly mix by pipetting up and down after each addition
2. Pipette 24uL of master mix into each PCR tube (remember - 3 replicates per sample)
	- If planning on using more than 1uL DNA, adjust this volume of master mix such that total PCR reaction volume is 25uL 
3. Pipette appropriate amount of DNA into each replicate tube
	- Use a new pipette tip for each replicate
4. Once DNA has been added to all tubes, double check the lids are all tightly closed and quickly spin these down
5. Run thermocycler program (~1 hour)
	- **16S:**
		1. 98ºC for 30 seconds
		2. 28 cycles (reduced from 30 cycles) of:  
			1. 98ºC for 10 seconds
			2. 50ºC for 30 seconds
			3. 72ºC for 20 seconds
		3. 72ºC for 2 mins (extension)
		4. 12ºC forever
	- **16S Touchdown:**
		1. 98ºC for 30s
		2. 98ºC for 10s 
		3. 62ºC for 30s ** -0.5ºC every cycle
		4. 72ºC for 20s 
		5. GOTO step 2 (x10)
		6. 98ºC for 10s 
		7. 57ºC for 30s 
		8. 72ºC for 20s 
		9. GOTO step 6 (x20)
		10. 72ºC for 20s
		11. Hold 12ºC

Proceed to gel electrophoresis or store at 4ºC

## II. Gel electrophoresis
### Notes
- **DO NOT** open PCR tubes in 504—move to 614
- All following steps in library prep can be done in the BSC, but it isn't strictly necessary! 
	- Since the sample-associated bacteria has been amplified, the risk of environmental contamination impacting sequencing results is low
- Always use 1:5 dilution of 100bp DNA ladder on every row of gel
- The protocol to make more TBE buffer is [here](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/TBE_Buffer_Protocol.md)

### 0. Prep
1. Calculate gel density:
	- % = weight (g) / volume (mL)
2. Mix agar and fresh 1X TBE buffer of ==1.5% agarose gel ==
	- Small rack = 50mL
	- Medium rack = 75mL
	- Large rack = 100mL 
3. Melt the agarose gel in the microwave, taking it out periodically to swirl
	- There should be no cloudiness to the melted gel—it should be crystal clear with large bubbles that dissipate quickly
4. Add 1uL GelRed per 50mL and swirl the flask to mix
5. Add the appropriate gel comb to the rig and pour the melted gel into the middle
	- You just need enough gel to see that all combs are submerged, doesn't need to be thick
	- If there are bubbles, use a pipette tip to gently move them out of the way
6. Let the gel set for 20-30 minutes, the wells will break if not cooled down enough

### 1. Protocol
1. Once the gel has set, remove the gel comb and turn the rig so DNA will move towards the positive electrode—DNA runs towards red!
2. Add 1x TBE running buffer to the rig until the gel is fully submerged and there is a thin layer of buffer over the top of the gel
3. Cut enough parafilm for all samples + ladders
4. Pipette up 8uL of loading dye and place 8 ~1uL dots of loading dye on the parafilm
	- This volume can vary, but keep in mind the dye does dry up
5. Mix 2uL of diluted DNA ladder with a dot of loading dye and pipette into the first well of each row
6. Mix 1uL PCR product with a dot of loading dye and pipette into the next well
	- **Important:** write down the order you are loading your samples in your lab notebook
7. Once all samples have been loaded, put cover on and set the electric current to ==110 volts for minimum of 35 mins==
	- The amount of time depends on the size of gel, can range from 35-90 mins 
	- If unsure, periodically use the imager to check the spread of the ladder and make sure the bands aren't running off the gel
	- Remember to return PCR products to 4ºC
8. Turn off the electric current *then* remove lid
9. Take picture of gel in the imager and save an annotated version in your lab notebook
	- Do not look at the blue-green light directly
	- Ensure photo is in focus, can be cropped later
	- In some cases you may need to run the gel longer to get more separation in bands 
10. You can reuse gels up to 3 times, so break the gel up into a glass flask that can be covered with parafilm, labeled, and stored at 4°C

## III. PCR Pooling
### Protocol
1. Using gel images of each sample, compare the relative brightness of each triplicate band and write out required volumes
	 - Band brightness generally has 3 levels: bright, faint, absent
	 - When all bands have the same brightness (regardless of level) - pool 5uL from each replicate
		- Ex: Rep A = faint (5uL), Rep B = faint (5uL), Rep C = faint (5uL)
	 - When some bands have different brightness - pool 10uL from fainter replicate(s) and 5uL from brighter replicate(s)
		- Ex: Rep A = absent (10uL), Rep B = faint (5uL), Rep C = faint (5uL)
		- Ex: Rep A = bright (5uL), Rep B = faint (10uL), Rep C = faint (10uL)
		- Okay if total volume is >15uL
2. Label new 8-strip PCR tubes
	 - Best to organize these in a 96-well plate format going column by column, top to bottom, left to right
	 - Don't forget to include a negative control! 

| Ex: |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- |
| 1   | 9   | 17  | 25  | 33  | 41  |
| 2   | 10  | 18  | 26  | 34  | 42  |
| 3   | 11  | 19  | 27  | 35  | 43  |
| 4   | 12  | 20  | 28  | 36  | ... |
| 5   | 13  | 21  | 29  | 37  |     |
| 6   | 14  | 22  | 30  | 38  |     |
| 7   | 15  | 23  | 31  | 39  |     |
| 8   | 16  | 24  | 32  | 40  |     |

3. Add required volumes of each triplicate into the appropriate labeled PCR tube

Proceed to indexing or store at 4ºC

## IV. Indexing PCR 
### Notes
- Use aliquoted primers, water, and dNTPs (limits contamination)
- **DO NOT** vortex albumin or hot start polymerase
	-  DNA polymerase should never be left at room temperature - stays in freezer or in freezer box
- Use the [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=270214121#gid=270214121) spreadsheet, and copy the final tables into your lab notebook
- Make sure to note which primer group you are using (BFi-13, BFi-14, BFi-15)
	- Indexing is the same as barcoding; we want each sample to have a unique combination of i5 and i7 primers so we can sequence multiple samples at once

### 0. Prep
- Thaw reaction buffer, dNTPs, primers, and DNA samples
	- Once thawed, gently vortex and spin these down
- Bleach the BSC workspace, pipettes, and tube racks
- UV-sterilize open 8-strip PCR tubes, water aliquot, and 1.5mL tubes 
	- **DO NOT** expose primers or DNA to the UV light
- Number the first and last lid of each 8-strip in same manner as pooled samples 
- Also label 12 primer-specific master mix PCR tubes as "i7" 1-12 and 8 tubes as "i5" A-H for primer mixes

### 1. Protocol
1. Create big master mix, adding appropriate volumes of each reagent in this order: buffer, dNTPs, albumin, DNA polymerase, and water
	- Make sure to thoroughly mix by pipetting up and down after each addition
	- Do not add any primers yet
2. Aliquot calculated volume of big master mix into each primer-specific master mix PCR tube
3. Using a multichannel pipette, add 12uL of each appropriate i7 and i5 master mix into labeled 8-strip PCR tubes
	- 12uL i7 master mix + 12uL i5 master mix + 1uL DNA = 25uL total reaction
	- Remember to pipette up and down after adding the second primer
4. Spin down pooled PCR products to collect any condensation that might be on the side of the tubes
5. Using a multichannel pipette, add 1uL pooled PCR product to each reaction
6. Once PCR product has been added to all tubes, double check the lids are all tightly closed and quickly spin these down
7. Run thermocycler program:
	- **67indexing** (~20 min)
		1. 98 for 30 sec
		2. 7 cycles of:
			1. 98 for 10 sec
			2. 67 for 30 sec
			3. 72 for 20 sec 
		3. 72 for 2 min
8. While the thermocycler is running, cast a gel (see [II. Gel electrophoresis](#II.%20Gel%20electrophoresis) for protocol)
9. Run a subset of corresponding indexed and pooled samples in adjacent lanes
	- Indexed samples should be longer than pooled samples
	- Set electrical current to ==120V for minimum of 40 minutes==

Proceed to bead clean-up or store at 4ºC
## VI. Purification with ampure beads

### Notes
Clean NGS beads attract DNA such that:
- Lower concentration of beads = less charge = attracts big pieces of DNA that are more negatively charged
	- Ex: 0.6x attracts +300bp amplicons
	- **Caution! Using too few beads can result in DNA being washed away!**
- Higher concentration of beads = more charge = attracts big and small pieces of DNA
	- Ex: 1.8x attracts +100bp amplicons
- Therefore, the ratio of beads added to the sample will change the amplicon size captured by the beads

### 0. Prep
- Use [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1947158502#gid=1947158502) spreadsheet, and copy the final tables into your lab notebook
- UV-sterilize 96-well plate

### 1. Protocol
1. Gently shake the clean NGS beads aliquot to resuspend any magnetic particles that may have settled
2. Using a multichannel pipette, add calculated volume of beads to each indexed sample; pipette up and down to mix at least 5 times—the mixture should appear brown and homogenous
3. Incubate for 5 minutes at room temperature for maximum recovery. 
4. Place the samples into a 96 well magnet rack for 3 minutes, or wait until the solution is clear
5. While incubating, make fresh 80% ethanol
6. Using a multichannel pipette, carefully aspirate out the clear supernatant from each tube and discard 
	- This step must be performed while the tubes are still in the magnet rack
	- Avoid disturbing the magnetic beads—if beads are drawn into tips, leave behind a few microliters of solution
	- Can use the same set of pipette tips since samples are indexed and DNA is captured on beads
7. Pour 80% ethanol into a reservoir and using a multichannel pipette, add 180 uL of 80% ethanol to each tube and incubate for 1 min at room temperature
	- Try not to expel directly onto beads, aim for side of tube
	- Keep tubes in magnet rack during these wash steps
8. Aspirate out the ethanol and discard, repeat for a total of three washes. 
9. Using the smaller multichannel pipette, go back and remove all of the ethanol from the bottom of the each tube
10. Air dry for 5 minutes to let remaining traces of ethanol evaporate
	- **DO NOT** over dry the beads, the captured beads will appear cracked—this will significantly decrease elution efficiency
11. Pour EB buffer into a reservoir
12. Remove samples from magnet rack
13. Using a multichannel pipette, add 25uL of EB buffer into each tube and pipette up and down until homogeneous and there are no beads left on the tube wall
14. Incubate at room temperature for 10 minutes
15. While incubating, cast a gel (see [II. Gel electrophoresis](#II.%20Gel%20electrophoresis) for protocol) 
16. Place the samples back on the magnet rack and incubate at room temperature for 2 minutes, or wait until the solution is clear
17. Using a multichannel pipette, transfer the supernatant containing purified PCR product to a 96-well plate and seal with foil
18. Run a subset of cleaned samples to confirm bead size selection worked
	- Can poke through foil seal with pipette tip
	- Any smaller nonspecific binding and primer-dimer bands should be gone
	- May need to repeat purification if there are still bands present
	- Set electrical current to ==110V for minimum of 35 minutes==

Store the plate at 4°C; for long-term storage, samples should be kept at -20°C

## VII. Sequencing Prep
### Protocol
1. Qubit each indexed and cleaned sample
2. Check the library requirements provided by the sequencing company
3. [Calculate molarity](https://labtestacademy.com/genomic-dna-library/): concentration (ng/μl) × 10⁶ / (660 g/mol × Library Size (bp))
	- Need to send the same amount of DNA (ng) per sample, so volumes will vary
	- Library size for 16S is ~400bp 
4. Pool indexed samples and aliquot appropriate volume (<100uL) to send for sequencing
5. Fill out necessary sequencing paperwork and shipping slips
6. Find a styrofoam box that can fit inside of a cardboard box to ship the pooled samples with icepacks
7. Bring to central receiving (1499 Middlesex Street) before 10AM which is when FedEx does their daily pickup 
	- Best to send samples out Monday - Wednesday to ensure the overnight delivery will be on a business day


