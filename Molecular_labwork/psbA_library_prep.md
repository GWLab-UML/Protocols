*adapted from NEB's Hot Start _Taq_DNA Polymerase (M0495) https://www.neb.com/en-us/protocols/2012/10/04/pcr-using-hot-start-taq-dna-polymerase-m0495

*use this sheet to determine reagent volumes*
https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=92320545#gid=92320545

last updated: 7/9/2026 BRC
## I. PCR 
### PCR Preparation 
- thaw reagents & samples 
- UV & label PCR tubes (1 tube per sample)
- check that molecular water is aliquoted 
- include negative control (water) in calculations  
### Create master mix for each sample
copy and paste calculation table here: 

| Reagent         | Amount per 1 rxn (uL) | MasterMix Amount (uL) + 10% |
| --------------- | --------------------- | --------------------------- |
| Buffer          | 2.5                   | 2.75                        |
| dNTP (10mM)     | 0.5                   | 0.55                        |
| F Primer (10uM) | 1                     | 1.1                         |
| R Primer (10uM) | 1                     | 1.1                         |
| DNA             | 2                     | 2.2                         |
| Polymerase      | 0.125                 | 0.1375                      |
| Water           | 17.75                 | 19.525                      |
| Albumin         | 0.125                 | 0.1375                      |
| Total           | 25                    | 27.5                        |

1. Add Buffer, dNTP, and Primers vortex to Eppendorf tube. Vortex Briefly  
	*(DO NOT vortex polymerase or albumin)*
2. Add water, pipette up and down to mix.
3. Add polymerase and albumin, pipette mixture up and down to mix
	*polymerase and albumin are viscous and bubbly easily so pipet slowly*
4. Pipette 24µL of master mix into each replicate tube
	*always mix master mix by pipetting up and down before filling each tube as polymerase sinks quickly*
5. Pipette 1µL of DNA into each tube, dial p20 up to 15 µL and pipette up and down to mix
6. briefly centrifuge pcr tubes before thermal cycler 
7. run thermocycler program: *35 cycles takes ~ 2 hours 20 minutes* 
    1. 95°C for 30 seconds
    2. 95°C for 30 seconds
    3. 45-68°C for 1 minute
    4. 68°C for 1.5 minute _repeat 2-4 for 35 cycles
    5. 68°C for 5 minutes
    6. 8°C for Forever

# **ALL POST-PCR DONE IN OTHER ROOM (aka the rest of this protocol)**

## II. Gel electrophoresis 

### Gel electrophoresis preparation
- always use 1:5 dilution of DNA ladder on every row of gel
- TBE Buffer Recipe: https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/TBE_Buffer_Protocol.md
### Making and setting up a gel
1. calculating gel density:
    *% = weight (g) / volume (mL)*
2. mix agar and fresh TBE buffer to generate a 1% agarose gel that will be large enough for the gel mold
	*small gel mold: 30 mL
	medium gel mold: 50 mL
	large gel mold: 75 mL*
3. melt mixture (on hot plate with stir bar or microwave) until mixture has big bubbles and there's no floaters
4. add 2 µL GelRed to gel once cool to touch *(if you don't, you won't see your bands!!)*
5. Add the appropriate gel comb. Pour gel into the middle of mold and wait for even dispersion (enough gel to see that the wells are in it, but not too thick)
	*use a pipet tip to push away any bubbles* 
6. let gel cool 
	*wells will break if not cooled down enough - 20 mins to be safe 
### Loading gel sample prep
1. Cut enough parafilm for all samples + ladders
2. Pipette up 20uL (if less than 20 samples use 1x # of samples) of loading dye and place ~1uL dots of loading dye on the parafilm for each well/sample
3. turn rig so **DNA will move towards the positive electrode** (run towards red)!
4. load 1µL of DNA ladder at beginning or end *(or both if large rig)* of the gel, and on each row
	*mix ladder with dot of loading dye from parafilm*
5. load 1µL PCR product
	*mix sample with loading dye*
6. put cover on and turn on electric current - **run 110 volts for ~35 mins**
    - *check to make sure bands aren't running off the gel*
    - *time length depends on the size of gel 30-90 mins*
7. turn off electric current **then** remove lid
8. take picture of gel and save in lab notebook
    - *make sure to that ladder is clearly separated*
    - *editing: crop to be centered, brightness -100 (if bands are hard to see*
9. you may reuse gels up to 3 times, if so, break the gel up into a glass container that can be covered and store at 2-8 °C 
	*label how many times the gel was used on the lid*

## III. Purification with ampure beads
https://www.beckman.com/reagents/genomic/cleanup-and-size-selection/pcr/bead-ratio
### Purification Preparation
- UV 1x # of samples in strip tubes 
- label and cross-link strip tubes start with the manufacturer protocol using 1.8X-1.0X DNA to bead ratio and 10uL-25uL PCR product 
- ratio of beads will change the band size you select for 
	*may need to re-clean samples if gel images show that multiple bands were not removed*
	- *1.0x will get rid of <200 bp dimers, 1.8X will get rid of dimer <100 bp* 
	- *for psbA usually use 0.6x but always double check sample gel image to pick ratio
- all calculations can be done here: [https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1947158502#gid=1947158502](https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=1947158502#gid=1947158502) 
### Purification 
1. make fresh 80% ethanol in a 50mL tube (label and parafilm when not in use)
    - paste filled out table here

| Number of Samples | 80% EtOH for each sample (uL) | Total 80% EtoH needed (uL) | Volume 100% EtOH (uL) | Volume H2O (uL) |
| ----------------- | ----------------------------- | -------------------------- | --------------------- | --------------- |
|                   | 360                           |                            |                       |                 |
|                   |                               |                            | in mL                 |                 |
|                   |                               |                            |                       |                 |

2. Determine whether or not a plate transfer is necessary. If the PCR reaction volume multiplied by 2.8 exceeds the volume of the PCR plate, a transfer to larger tubes is required.
3. Gently shake the Clean NGS Mag PCR Clean-up aliquot to resuspend any Magnetic particles that may have settled.
    1. Add CleanNGS Mag PCR Clean-up volume table below:

|Bead Concentration|PCR volume (uL)|Added beads volume (uL)|Total # Samples|Total Bead Volume (uL)|
|---|---|---|---|---|
|||0|96|0|

**Note:** The volume of CleanNGS Mag PCR Clean-up for a given reaction can be determined from the following equation:  
_(Volume of Mag Beads per reaction) = (Bead Concentration) x (PCR Reaction Volume)

3. Mix reagent and PCR reaction thoroughly by pipette mixing 5 times.
4. Incubate the mixed samples for 5 minutes at room temperature for maximum recovery. 
	*This step allows the binding of PCR products 125bp (based on concentration) and greater to the Magnetic beads. After mixing, the color of the mixture should appear homogenous.*
5. Place the reaction plate onto a 96 well Magnet Plate for 3 minutes or wait until the solution is clear.
	*Wait until the solution is clear before proceeding to the next washing step. Otherwise there may be beads loss.*
6. Aspirate the cleared solution from the reaction plate and discard
	*This step must be performed while the reaction plate is placed on the 96 magnetic plate. Avoid disturbing the settled magnetic beads. If beads are drawn into tips, leave behind a few microliters of solution.*
	*Since the target DNA is on the bead, pipette tips can be reused between samples as long as beads are not disturbed - ALWAYS check tips for beads before going to the next sample* 
7. Dispense **180 uL of 80% ethanol** to each well of the reaction plate and incubate for **1 min** at room temperature. 
8. Aspirate out the ethanol and discard. Repeat for a total of two washes. 
	*It is important to perform these steps with the reaction plate on a 96 well Magnetic Plate. Do not disturb the settled Magnetic beads (again can reuse tips as long as beads are not disturbed.*
    1. Remove all of the ethanol from the bottom of the well to avoid ethanol carryover. 
	    *Bump pipette tip up to 200 uL, may need to use p20 multichannel*
    2. **NOTE:** *A 1 minute air dry at room temperature is recommended for the evaporation of the remaining traces of ethanol when using ~20 uL of beads.* **Do not overdry the beads** *(the layer of settled beads appears dull or cracked) as this will significantly decrease elution efficiency.
9. Take off the plate from the Magnetic plate, add same volume or less than starting sample uL of elution buffer (Reagent grade water, TRIS-HCl pH 8.0, or TE buffer) to each well of the reaction plate and pipette mix 5 times.
    *mix until homogeneous and there are no beads on tube wall*
10. Incubate at room temperature for 10 minutes.
	*if beads over dried incubate for longer*
11. Place the plate on a magnetic separation device to magnetize the CleanNGS particles. 
12. Incubate at room temperature until the CleanNGS particles are completely cleared from solution.
13. Transfer the cleared supernatant containing purified DNA and/or RNA to a new (RNase-free) 96-well microplate and seal with non-permeable sealing film.
14. Store the plate at 2-8°C if storage is only for a few days. For long-term storage, samples should be kept at -20°C.
### Gel Electrophoresis
1. Refer to step II 
2. Run a gel to confirm bead size selection worked
### Sequencing Prep
1. Assess need for Gel Extraction
    1. If need gel extraction refer to [[Qiagen Gel Extraction]]
    2. If no need, skip to step 2
2. Nanodrop each indexed sample
3. Calculate amount of sample needed to send out for sequencing
	*For Sanger-EZ, create a sample with 10 uL DNA + 5 uL Primer (5 uM)*
	*this is what will go into the easy sanger tubes that will be sent for sequencing*
	calculations can be done here: https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit?gid=92320545#gid=92320545
4. Fill out necessary sequencing paperwork 
	*For Sanger-EZ, login into Genewiz account and request courier pickup for the Olsen hall drop box, then place samples into drop box at the end of the hall on the 6th floor
