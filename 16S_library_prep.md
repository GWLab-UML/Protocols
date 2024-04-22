
# 16S Library Prep
adapted from [SOP_MDE_Metabarcoding Standard Genetic Methods (November2021).pdf](https://github.com/SERCCoastalDisease/Protocols/blob/main/SOP_MDE_Metabarcoding%20Standard%20Genetic%20Methods%20(November2021).pdf)

#### *mastermix calculations are [here](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit#gid=909202954)

#### Prep Before
- UV sterilize empty and open tubes, water, pipettes and tips, etc.

#### I. PCR
- **Repeat 3x for all samples that are to be included in the metabarcode library**
- ==*always include water (negative control - indication of no contamination) and very dilute positive controls (1-5ng of DNA) in every experiment*==
- **Mix the following agents via vortex:** Buffer, MgCl2, primers
- **DO NOT vortex:** BSA or Taq
	- Taq should *never* be left at room temperature - **stays in freezer or in freezer box**
- use aliquoted reagents (limits contamination)
- **all PCR prep is done in the bench top hood in the lab***
- add 10% for mastermix and reagent calculations - leaves buffer room to make sure there's enough for full amounts
- UV sterilize tubes before starting pipetting

| Reagent | Amount per 1 rxn |
| ---- | ---- |
| Buffer | 2.5 |
| dNTP (10mM) | 0.5 |
| MgCl2 | 1.5 |
| F Primer (10uM)* | 1 |
| R Primer (10uM)* | 1 |
| DNA | 1 |
| Polymerase | 0.125 |
| Water | 17.125 |
| BSA (recombinant albumin) | 0.25 |
[mastermix calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit#gid=909202954)

** ==adapter primers== - for each batch, choose one set of primers (*either* 0N, 1N, 2N, *or* 3N)

1. Add all reagents (**except for DNA template**) into tube for mastermix 
2. Pipette 24uL of mastermix into each tube
3. Pipette 1uL of DNA template (or pos/neg control) to each corresponding tube
4. Run thermal cycler program: (*16S_Part1 on thermal cycler*)
	1. 95C for 10 mins
	2. 35 cycles of:
		1. 95C for 45 seconds
		2. 50C for 1 minute
		3. 72C for 1 minute
	3. 72C for 10 mins (extension)


### ==**ALL POST-PCR DONE IN OTHER ROOM (aka the rest of this protocol)**


#### II. Gel electrophoresis
- **always use standard DNA ladder on every row of gel**
- [TBE Buffer Protocol](https://github.com/jgmcdonough/GW-lab-notebook/blob/main/Protocols/TBE%20Buffer%20Protocol.md)

**Gel set up:**
- mix agar and clean TBE buffer to generate a 2% agarose gel that will be large enough for the samples
- calculating gel density:
	- % = weight (g) / volume (mL)
	- 2% gel = 4 grams of agarose + 200mL 0.5X TBE
- melt mixture (on hot plate with stir bar or microwave) until mixture has big bubbles and there's no floaters
	- do not pour into gel rig until flask is cool to touch
	- **add GelRed to gel once cool** (2-3uL per 100uL of gel)
- Add gel comb for number of samples you need
	- pour gel until just underneath where the comb ends
- let gel cool until hard to touch - wells will break if not cooled down enough

**Loading and running gel**
- turn rig so DNA will move *towards the positive electrode*
	- fill rig with TBE buffer so that the agarose gel is completely submerged
- load 2-3uL of DNA ladder (6X; 1:100 dilution) at beginning or end (or both if large rig) of the gel, and on each row
- load PCR product 
	- **mix 3-5uL of PCR product with 2uL of loading dye** for each sample on a piece of parafilm
- put cover on and turn on electric current - **run 120 volts for ~1 hour
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

[index setup template table](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit#gid=1362495485)

**Steps:**
1. Create mastermix for PCR reagents (***without* indexing primers and DNA**)
	1. [mastermix calculations](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit#gid=909202954)
	2. Pipette 22 uL of mastermix to each well 
2. Add 1uL of i5 primer and 1uL of i7 primer ==(*unique combination for each sample*)==
	1. better to do this first so no possible contamination of DNA
	2. ==**keep track of combinations for each sample**==
3. Add 1uL of DNA to individual reactions (Pooled PCR products)
4. Run thermal cycler program detailed below

| Reagent | Amount per 1 rxn (uL) |
| ---- | ---- |
| Buffer | 2.5 |
| dNTP (10mM) | 0.5 |
| MgCl2 | 1.5 |
| F Primer (10uM) | 1 |
| R Primer (10uM) | 1 |
| DNA (Pooled PCR product) | 1 |
| Polymerase | 0.125 |
| Water | 17.125 |
| BSA (recombinant albumin) | 0.25 |
| Total | 25 |

Thermocycler program:
1. 95 for 5 mins
2. **95 for 20 sec**
3. **60 for 45 sec**
4. **72 for 45 sec** 
*repeat steps 2-4 for 8 cycles (# of cycles varies depending on input)*
6. 72 for 5 min

#### V. Gel electrophoresis
perform steps as above with one addition:
- for each row in the gel, **include both a ladder and a ==non-indexed control==**
- pre- and post-indexed samples should be different sizes
- **3uL of product used per well**
- run gel at ==90V for 45 minutes==

#### **VI. Purification with ampure beads**
1. obtain, label, and cross-link new strip tubes
3. make fresh 70% ethanol in a 50mL tube (label and parafilm when not in use)
4. Pipette indexed PCR into new strip tubes
	1. use as much product as you can, but make sure it's the same for all samples and you know how much - calculate amount of beads based on this
5. follow [manufacturer's protocol](https://www.beckman.com/reagents/genomic/cleanup-and-size-selection/pcr/ampure-xp-protocol) for the AMPureXP beads
	1. a 1.8X bead ratio will remove fragments 100bp and lower
	2. a 0.8X bead ratio will remove fragments 300bp and lower
6. Pipette 1.8X or 0.8X beads into trough, use multi-channel to pipette into strip tubes
	1. can use reuse troughs until gross - **only for beads and EtOH - not for water**
7. let beads and index products sit at room temp for 5 minutes
8. put onto magnet for 2 minutes - or until solution is clear
	1. beads will cling to the side of the magnet
9. **WHILE ON MAGNET** - pipette out clear liquid
	1. make sure **ONLY** clear liquid in pipette - if solution gets brown again, let sit on the magnet longer 
10. **WHILE ON MAGNET** - add enough 70 ethanol (EtOH) to cover the beads - leave for 30 seconds and then pull out - try not to disturb beads
	1. can put EtOH in trough and use multi channel
11. Repeat step 10 at least once more - make sure to get all of the EtOH out on the last wash
	1. can let air dry for a minute or so to make sure any remaining EtOH is removed
12. **TAKE OFF MAGNET** - pipette 20uL of water into strip tubes to get DNA off the beads - let sit ~5 minutes to resuspend DNA
	1. manufacturing protocol says 40uL - but easier to dilute then get concentration back 
	3. can use trough with multi channel to pipette water - **do not reuse this trough** - get a new one each time 
	4. can let sit for longer if concerned about concentration to ensure resuspension 
13. put tubes back on the magnet for ~1 minute
	1. if some beads left - don't worry - can stick tubes back on the magnet while pipetting out for final sample to ensure you're not pipetting beads
14. pipette 20uL of clear liquid into the final tube 
	1. pipette from opposite side of the magnet - goal is to recover all of the water

#### **VII. Gel electrophoresis**
don't have to run gel, only if you want to check to make sure primer dimers and other junk is gone - standard gel run as described above

#### VIII. Quantification with Quibit

#### IX. Pooling calculations for final library