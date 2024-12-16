**NOTE**: adapted from: [SOP_MDE_Metabarcoding Standard Genetic Methods (November2021).pdf](https://github.com/SERCCoastalDisease/Protocols/blob/main/SOP_MDE_Metabarcoding%20Standard%20Genetic%20Methods%20(November2021).pdf)

**NOTE**: all calculations can be done here: https://docs.google.com/spreadsheets/d/1l1ROib1xUoKOvusw5yShw5e5KsiRvz8F_r2zNBwmhAM/edit#gid=0


#### I. PCR
- **Repeat 3x for all samples that are to be included in the metabarcode library**
- *always include water (negative control - indication of no contamination) and very dilute positive controls (1-5ng of DNA) in every experiment*
- **Mix the following agents via vortex:** Buffer, MgCl2, primers
- **DO NOT vortex:** BSA or Taq
	- Taq should *never* be left at room temperature - **stays in freezer or in freezer box**
- use aliquoted reagents (limits contamination)
- **all PCR prep is done in the bench top hood in the lab***

| Reagent | Amount per 1 rxn | MasterMix Amount | # Samples | Triplicate |
| ---- | ---- | ---- | ---- | ---- |
| Buffer | 2.5 |  |  |  |
| dNTP (10mM) | 0.5 |  |  |  |
| MgCl2 | 1.5 |  |  |  |
| F Primer (10uM) | 1 |  |  |  |
| R Primer (10uM) | 1 |  |  |  |
| DNA | 1 |  |  |  |
| Polymerase | 0.125 |  |  |  |
| Water | 17.125 |  |  |  |
| BSA | 0.25 |  |  |  |
*taken from Sarah's evernote 02/02/21 16S*

1. Create master mix for each sample
2. Pipette 25uL of master mix into each replicate tube (3 replicates per sample)
3. Run thermocycler program:
	1. 95C for 10 mins
	2. 35 cycles of:
		1. 95C for 15 seconds
		2. 50C for 1 minute
		3. 72C for 1 minute
	3. 72C for 10 mins (extension)


### **ALL POST-PCR DONE IN OTHER ROOM (aka the rest of this protocol)**


#### II. Gel electrophoresis
- **always use standard DNA ladder on every row of gel**
- TBE Buffer 'Recipe' https://github.com/jgmcdonough/GW-lab-notebook/blob/main/Protocols/TBE%20Buffer%20Protocol.md

**Making and setting up a gel:**
- mix agar and clean TBE buffer to generate a 2% agarose gel that will be large enough 
- calculating gel density:
	- % = weight (g) / volume (mL)
- melt mixture (on hot plate with stir bar or microwave) until mixture has big bubbles and there's no floaters
	- do not pour into gel rig until flask is cool to touch
	- **add SyberSafe to gel once cool** (if you don't, you won't see your bands!!)
- Add gel comb for number of samples you need
	- pour gel until just underneath where the comb ends
- let gel cool - wells will break if not cooled down enough
- **turn rig so DNA will move towards the positive electrode**
- load 2-3uL of DNA ladder (6X; 1:100 dilution) at beginning or end (or both if large rig) of the gel, and on each row
- load PCR product 
- put cover on and turn on electric current - **run 120 volts for ~35 mins**
	- check to make sure bands aren't running off the gel
- turn off electric current *then* remove lid
- take picture of gel and save where needed

#### III. PCR Pooling
1. using gel images - compare relative brightness of each band for sample replication across all 3 replicates
2. based on comparison - write out required volume to be pooled from each replicate
	1. band brightness generally has 3 levels: bright, faint, absent
	2. when **all bands have the same brightness** (regardless of level): take 5uL from each replicate
		1. Ex. R1 = Bright (5uL), R2 = Bright (5uL), R3 = Bright (5uL)
		2. Ex. R1 = absent (5uL), R2 = absent (5uL), R3 = absent (5uL)
	3. when **all bands are not equal brightness**, then take 10uL from the fainter replicates and pool with 5uL from the bright replicates
		1. Ex. R1 = faint (5uL), R2 = absent (10uL), R3 = absent (10uL)
3. obtain, label, cross-link new strip tubes - appropriate volumes from all 3 replicates are put in the same tube

#### IV. Indexing PCR 
- each sample is indexed with a unique combination of i5 and i7 primers 

using HotStart reagents for this protocol using the following combination of reagents:
- 1uL of pooled product as template in the indexing PCR
- indexing PCR done in 25uL total reaction volume using KAPA Ready Mix

**Steps:**
1. Use strip tubes to create a master mix for each i5 and i7 primer
2. use multi-channel pipette to dispense the master mixes into appropriate tube
	1. add 12uL of each i5 and i7 master mix to each reaction tube - following the template to track the combination of barcodes used for each sample
	2. 12uL i5 master mix + 12uL i7 master mix + 1uL template = 25uL total reaction
3. add DNA to individual reactions 
4. run thermocycler program

| Reagent | Amount per 1 rxn |
| ---- | ---- |
| H2O | 9.5 uL |
| KAPA ReadyMix | 12.5 uL |
| F Primer (10uM) | 1 uL |
| R Primer (10uM) | 1 uL |
| Pooled amplicon (template) | 0.5 uL |
Thermocycler program:
1. 95 for 5 mins
2. **98 for 20 sec**
3. **60 for 45 sec**
4. **72 for 45 sec** 
*repeat 2-4 for 8 cycles (# of cycles varies depending on input)*
6. 72 for 5 min

#### V. Gel electrophoresis
perform steps as above with one addition:
- for each row in the gel, **include both a ladder and a non-indexed control**
- pre- and post-indexed samples should be different sizes
- **1uL product used to load gel to check indexing**

#### **VI. Purification with ampure beads**
obtain, label, and cross-link new strip tubes
start with the manufacturer protocol using 1.8X-1.5X bead ratio and 10uL PCR product
make fresh 70% ethanol in a 50mL tube (label and parafilm when not in use)
	 *may need to re-clean samples if gel images show that multiple bands were not removed*
1. Determine whether or not a plate transfer is necessary. If the PCR reaction volume multiplied by 2.8 exceeds the volume of the PCR plate, a transfer to larger tubes is required.
2. Gently shake the AxyPrep Mag PCR Clean-up bottle to resuspend any Magnetic particles that may have settled.  Add  AxyPrep Mag PCR Clean-up according to the PCR reaction volume table below: PCR Reaction Volume L) AxyPrep Mag PCR Clean-up Volume at 1.8X ( L) 10 18 20 36 50 90 Note: The volume of AxyPrep Mag PCR Clean-up for a given reaction can be determined from the following equation:  (Volume of AxyPrep Mag PCR Clean-up per reaction) = 1.8 x (PCR Reaction Volume)
3. Mix reagent and PCR reaction thoroughly by pipette mixing 5 times.
4. Incubate the mixed samples for 5 minutes at room temperature for maximum recovery. This step allows the binding of PCR products 125bp and greater to the Magnetic beads.  After mixing, the color of the mixture should appear homogenous.
5. Place the reaction plate onto a 96 well Magnet Plate for 3 minutes or wait until the solution is clear.  Wait until the solution is clear before proceeding to the next washing step. Otherwise there may be beads loss.
6. Aspirate the cleared solution from the reaction plate and discard This step must be performed while the reaction plate is placed on the 96 Magnet Plate. Avoid disturbing the settled Magnetic beads. If beads are drawn into tips, leave behind a few microliters of solution.
7. Dispense 200 L of 70% ethanol to each well of the reaction plate and incubate for 30 seconds at room temperature.  Aspirate out the ethanol and discard.  Repeat for a total of two washes.  It is important to perform these steps with the reaction plate on a 96 well Magnetic Plate. Do not disturb the settled Magnetic beads. Remove all of the ethanol from the bottom of the well to avoid ethanol carryover.  NOTE: A 5 min air dry at room temperature is recommended for the evaporation of the remaining traces of ethanol. Do not overdry the beads (the layer of settled beads appears cracked) as this will significantly decrease elution efficiency.
8. Take off the plate from the Magnetic plate, add 40 uL of elution buffer (Reagent grade water, TRIS-HCl pH 8.0, or TE buffer) to each well of the reaction plate and pipette mix 5 times. 
	

#### **VII. Gel electrophoresis**

