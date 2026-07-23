Adapted from: [SOP_MDE_Metabarcoding Standard Genetic Methods (November2021).pdf](https://github.com/SERCCoastalDisease/Protocols/blob/main/SOP_MDE_Metabarcoding%20Standard%20Genetic%20Methods%20(November2021).pdf)

Reagent calculation spreadsheet: [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=909202954#gid=909202954)

==**All steps after the first PCR must be done in the post-PCR room (614)==**

Last updated: July 23, 2026 JF

## I. First PCR
### Notes
- All of the following first PCR protocol should be done in a BSC in 504
- Repeat each sample in triplicate (3x)
- Always include water (negative control) in every run
- Use aliquoted primers, water, and dNTPs (limits contamination)
- **DO NOT** vortex albumin or hot start polymerase
	-  *DNA polymerase should never be left at room temperature - stays in freezer or in freezer box*
- Use the [mm_calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=909202954#gid=909202954) spreadsheet, and copy the final table into your lab notebook
- Make sure to note which primer you are using each day (0N, 1N, 2N, 3N)

### 0. Prep
- Thaw reaction buffer, dNTPs, primers, and DNA samples
	- Once thawed, vortex and quickly spin these down
- Number each DNA sample sequentially in your lab notebook—this is how the PCR tubes will be identified
- Bleach the BSC workspace, pipettes, and tube racks
- UV-sterilize open 8-strip PCR tubes, water aliquot, and 1.5mL master mix tube
	- **DO NOT** expose primers or DNA to the UV light

### 1. Protocol
1. Create master mix, adding appropriate volumes of each reagent in this order: buffer, dNTPs, forward primer, reverse primer, albumin, DNA polymerase, and water
	- Make sure to thoroughly mix by pipetting up and down after each addition
2. Pipette 24uL of master mix into each PCR tube (remember - 3 replicates per sample)
3. Pipette 1uL of DNA into each replicate tube
	- Use a new pipette tip for each replicate
4. Once DNA has been added to all tubes, double check the lids are all tightly closed and quickly spin these down
5. Run thermocycler program
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


## II. Gel electrophoresis
### Notes
- **DO NOT** open PCR tubes in 504—move to 614
- Can use unfiltered pipette tips for this if not doing NGS
- Always use 1:5 dilution of 100bp DNA ladder on every row of gel
- The protocol to make more TBE buffer is [here](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/TBE_Buffer_Protocol.md)

### 0. Prep
1. Calculate gel density:
	- % = weight (g) / volume (mL)
2. Mix agar and fresh 1X TBE buffer to create 50-150mL of ==1.5% agarose gel== (the volume will depend on what size gel you are trying to make)
3. Melt the agarose gel in the microwave, taking it out periodically to swirl
	-  There should be no cloudiness to the melted gel—it should be ultra clear
4. Add 1uL GelRed per 50mL and swirl the flask to mix
5. Add the appropriate gel comb to the rig and pour the melted gel into the middle and wait for even dispersion
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
	- If unsure, check periodically to make sure the bands aren't running off the gel
8. Turn off the electric current *then* remove lid
9. Take picture of gel in the imager and save an annotated version in your lab notebook
	- Do not look at the blue-green light directly
	- Ensure photo is in focus, can be cropped later
	- In some cases you may need to run the gel longer to get more separation in bands 
10. You can reuse gels up to 3 times, so break the gel up into a glass flask that can be covered, labeled, and stored at 4°C

## III. PCR Pooling
1. using gel images - compare relative brightness of each band for sample replication across all 3 replicates
2. based on comparison - write out required volume to be pooled from each replicate
	 - band brightness generally has 3 levels: bright, faint, absent
	 - when **all bands have the same brightness** (regardless of level): take 5uL from each replicate
		1. Ex. R1 = Bright (5uL), R2 = Bright (5uL), R3 = Bright (5uL)
		2. Ex. R1 = absent (5uL), R2 = absent (5uL), R3 = absent (5uL)
	 - when **all bands are not equal brightness**, then take 10uL from the fainter replicates and pool with 5uL from the bright replicates
		1. Ex. R1 = faint (5uL), R2 = absent (10uL), R3 = absent (10uL)
3. obtain, label, cross-link new strip tubes (or plate) - appropriate volumes from all 3 replicates are put in the same tube

#### IV. Indexing PCR 
- each sample is indexed with a unique combination of i5 and i7 primers 

1. using HotStart reagents for this protocol using the following combination of reagents:
	- 1uL of pooled product as template in the indexing PCR
	- indexing PCR done in 25uL total reaction volume using NEB Q5 Hot Start High Fidelity Master Mix
2. plan out indexing well plate set up
	1. https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1362495485#gid=1362495485
3. Make Big master Mix
	- https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=270214121#gid=270214121
**Steps:**
4. Use strip tubes to create a master mix for each i5 and i7 primer
5. use multi-channel pipette to dispense the master mixes into appropriate tube
	- add 12uL of each i5 and i7 master mix to each reaction tube - following the template to track the combination of barcodes used for each sample
	- 12uL i5 master mix + 12uL i7 master mix + 1uL template = 25uL total reaction
6. add DNA to individual reactions 
7. run thermocycler program
	1. 98 for 30 sec
	2. **98 for 10 sec**
	3. **67 for 30 sec**
	4. **72 for 20 sec** 
	*repeat 2-4 for 7 cycles (# of cycles varies depending on input)*
	5. 72 for 2 min

#### V. Gel electrophoresis
perform steps as above with additions:
- for each row in the gel, **include both a ladder and a non-indexed control**
- pre- and post-indexed samples should be different sizes
- **1uL product used to load gel to check indexing**
*You can run this gel at 120 V for 35-40 min*

#### **VI. Purification with ampure beads**
https://www.bulldog-bio.com/wp-content/uploads/2025/08/CleanNGS-User-Manual-Version-9.pdf
obtain, label, and cross-link new strip tubes
start with the manufacturer protocol using 1.8X-0.8X bead ratio and 10uL-25uL PCR product
- ratio of beads will change the size you select for 
 *may need to re-clean samples if gel images show that multiple bands were not removed*
- 0.8x will get rid of <350 bp dimers, 1.8X will get rid of dimer <100 bp
https://www.beckman.com/reagents/genomic/cleanup-and-size-selection/pcr/bead-ratio
![[bead_SizeSelection.png]] 

- **NOTE:** all calculations can be done here https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1947158502#gid=1947158502
1.  make fresh 80% ethanol in a 50mL tube (label and parafilm when not in use)
	- paste filled out table here

| Number of Samples | 80% EtOH for each sample (uL) | Total 80% EtoH needed (uL) | Volume 100% EtOH (uL) | Volume H2O (uL) |
| ----------------- | ----------------------------- | -------------------------- | --------------------- | --------------- |
|                   | 360                           |                            |                       |                 |
|                   |                               |                            | in mL                 |                 |
|                   |                               |                            |                       |                 |


2. Determine whether or not a plate transfer is necessary. If the PCR reaction volume multiplied by 2.8 exceeds the volume of the PCR plate, a transfer to larger tubes is required.
3. Gently shake the Clean NGS Mag PCR Clean-up aliquot to resuspend any Magnetic particles that may have settled. 
	1. Add CleanNGS Mag PCR Clean-up volume table below: 
	
| Bead Concentration | PCR volume (uL) | Added beads volume (uL) | Total # Samples | Total Bead Volume (uL) |
| ------------------ | --------------- | ----------------------- | --------------- | ---------------------- |
|                    |                 | 0                       | 96              | 0                      |

**Note:** The volume of CleanNGS Mag PCR Clean-up for a given reaction can be determined from the following equation:  
	*(Volume of Mag Beads per reaction) = (Bead Concentration) x (PCR Reaction Volume)*
	
3. Mix reagent and PCR reaction thoroughly by pipette mixing 5 times.
4. Incubate the mixed samples for 5 minutes at room temperature for maximum recovery. This step allows the binding of PCR products 125bp (based on concentration) and greater to the Magnetic beads.  After mixing, the color of the mixture should appear homogenous.
5. Place the reaction plate onto a 96 well Magnet Plate for 3 minutes or wait until the solution is clear.  Wait until the solution is clear before proceeding to the next washing step. Otherwise there may be beads loss.
6. Aspirate the cleared solution from the reaction plate and discard This step must be performed while the reaction plate is placed on the 96 magnetic plate. Avoid disturbing the settled magnetic beads. If beads are drawn into tips, leave behind a few microliters of solution.
7. Dispense **180 uL of 80% ethanol** to each well of the reaction plate and incubate for **1 min** at room temperature.  Aspirate out the ethanol and discard.  Repeat for a total of **three washes**.  It is important to perform these steps with the reaction plate on a 96 well Magnetic Plate. Do not disturb the settled Magnetic beads. 
	1. Remove all of the ethanol from the bottom of the well to avoid ethanol carryover. **Bump pipette tip up to 200 uL, may need to use p20 multichannel** 
	2. NOTE: A 5 min air dry at room temperature is recommended for the evaporation of the remaining traces of ethanol. **Do not overdry the beads** (the layer of settled beads appears cracked) as this will significantly decrease elution efficiency.
8. Take off the plate from the Magnetic plate, add equal amount of original volume or less of elution buffer (Reagent grade water, TRIS-HCl pH 8.0, or TE buffer) to each well of the reaction plate and pipette mix 5 times. 
	1. mix until homogeneous and there are no beads on tube wall
9. Incubate at room temperature for 10 minutes. 
10. Place the plate on a magnetic separation device to magnetize the CleanNGS particles. Incubate at room temperature until the CleanNGS particles are completely cleared from solution. 
11. Transfer the cleared supernatant containing purified DNA and/or RNA to a new (RNase-free) 96-well microplate and seal with non-permeable sealing film. 
12. Store the plate at 2-8°C if storage is only for a few days. For long-term storage, samples should be kept at -20°C.

#### VII. Gel Electrophoresis 
1. Refer to steps II and V
2. Run a gel with select samples to confirm bead size selection worked 
3. Can run this gel at 120 V for 35-40 min
#### VIII. Sequencing Prep
1. Assess need for Gel Extraction
	1. If need gel extraction refer to [[Qiagen_gel_extraction]]	
	2. If no need, skip to step 2
2. Qubit each indexed sample
3. Pool all indexed samples according to final concentration
4. Calculate Molarity by plugging in concentrations, volume 
https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1110196762#gid=1110196762
5. Fill out necessary sequencing paperwork


