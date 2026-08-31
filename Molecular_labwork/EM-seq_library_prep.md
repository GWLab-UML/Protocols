# Enzymatic Methyl Seq (EM-seq) Library Prep
[NEBNext EM-seq](https://www.neb.com/en-us/products/e8015-nebnext-enzymatic-methyl-seq-v2-kit) is an enzyme-based alternative to bisulfite conversion for the identification of 5mC and 5hmC.

Input DNA *must* be fragmented to 350 bp and between 0.1-200ng. If DNA is already fragmented, proceed to the NEBNext EM-seq kit. If DNA needs to be fragmented, proceed to the first section.

## Protocol Overview
1. [DNA Preparation and Fragmentation](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#dna-preparation-and-fragmentation)
2. [End Prep of Fragmented DNA](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#end-prep-of-fragmented-dna)
3. [Ligation of EM-seq Adaptor](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#ligation-of-em-seq-adaptor)
4. [Clean-Up of Adaptor Ligated DNA](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#clean-up-of-adaptor-ligated-dna)
5. [Protection of 5mC and 5hmC](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#protection-of-5mc-and-5hmc)
6. [Clean-Up of Protected DNA](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#clean-up-of-protected-dna)
7. [Denaturation of DNA](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#denaturation-of-dna)
8. [Deamination of Cytosines](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#deamination-of-cytocines)
9. [PCR Amplification](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#pcr-amplification)
10. [Clean-Up of Amplified Libraries](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#clean-up-of-amplified-libraries)
11. [Library Quantification and Sequencing](https://github.com/GWLab-UML/Protocols/blob/main/Molecular_labwork/EM-seq_library_prep.md#library-quantification-and-sequencing)

## Fragmentation & EM-seq Library Prep
Enzymatic fragmentation is an alternative to mechanical shearing. This protocol is used in combination with the NEBNext EM-seq v2 Kit (and so the downstream steps will differ from the EM-seq protocol on its own without enzymatic shearing)
### All Materials
- [NEBNext UltraShear](https://www.neb.com/en-us/products/m7634nebnext-ultrashear)
	- UltraShear Reaction Buffer (white; thawed and kept on ice)
	- UltraShear (white; kept on ice)
	- 500 mM DTT (green)
- [NEBNext Enzymatic Methyl-seq v2 Kit](https://www.neb.com/en-us/products/e8015-nebnext-enzymatic-methyl-seq-v2-kit)
	- Control DNA unmethylated lambda (lilac)
	- Control DNA CpG methylated pUC19 (lilac)
	- Ultra II End Prep Enzyme Mix (green)
	- Ultra II Ligation Master Mix (red)
	- Ligation Enhancer (red)
	- EM-seq Adaptor (red)
	- Sample purification beads
	- Elution buffer (white)
	- Carrier DNA (red)
	- TET2 Reaction Buffer (yellow)
	- TET2 Reaction Buffer Supplement (yellow)
	- T4-BGT (yellow)
	- T4-BGT Dilutent (yellow)
	- UDP-Glucose (yellow)
	- DTT (yellow)
	- TET2 (yellow)
	- 500 mM Fe(II) (yellow)
	- Stop Reagent (yellow)
	- Deamination Reaction Buffer (orange)
	- Recombinant Albumin (orange)
	- APOBEC (orange)
	- Q5U Master Mix (blue)
- [NEBNext LV UDI Primer Pair](https://www.neb.com/en-us/products/e3400-nebnext-lv-unique-dual-index-primers-set-1)
- 0.1-200 ng of sample DNA
- 1X TE (10 mM Tris pH 8.0, 1mM EDTA)
	- add 800mL DI water to a beaker 
	- add 1.21 g Tris Base to the beaker and dissolve
	- add 372 mg EDTA and dissolve (may take some time)
	- measure pH and adjust to 8.0 using HCl
	- transfer to 1L capped bottle, bring the final volume to 1L with DI water
- Formamide
- Nuclease-free water
- 80% ethanol (made fresh each time)
- Magnetic tube stand

### Prep
1. Grab ice to store reagents on
2. Preheat thermal cycler (with heated lid) to 75°C

## Protocol
>based on the [NEB UltraShear and EM-seq protocol](https://www.neb.com/en-us/-/media/nebus/files/manuals/manualm7634.pdf?rev=7e58b7e989804f8da0100e31cd67f610&sc_lang=en-us&hash=6C7399AC792D964A3282BF545880A584#page=7)

### DNA Preparation and Fragmentation
#### Materials until next stopping point
- sample DNA
- control DNA(unmethylated lambda and CpG methylated pUC19)
- PCR tubes
- UltraShear Reaction Buffer
- UltraShear
#### Protocol
1. Determine the amount of sample and control DNA to use based on desired sequencing depths:
>the dilutions are useful to perform a QC of conversion estimates - the dilutions below will provide sufficient coverage of controls for libraries sequenced to 10M paired reads and above; if the sequencing depth will be lower than 10M PE, then dilution of controls will need to be optimized

| Sample DNA Input Amount | Control DNA Dilution Recommendations |
| ----------------------- | ------------------------------------ |
| 0.1 ng                  | 1:1000                               |
| 1 ng                    | 1:250                                |
| 10 ng                   | 1:100                                |
| 200 ng                  | 1:10                                 |
2. Combine sample DNA (0.1-200 ng) with control DNAs specified below and make up the volume to 26 uL with 1X TE 

| Component                                        | Volume    |
| ------------------------------------------------ | --------- |
| Sample DNA                                       | 24 uL     |
| Diluted control DNA unmethylated lambda (lilac)  | 1 uL      |
| Diluted control DNA CpG methylated pUC19 (lilac) | 1 uL      |
| **total volume**                                 | **26 uL** |
3. Ensure that the white NEBNext UltraShear Reaction Buffer is completely thawed and quickly vortex to mix. Place on ice until use. 
4. Vortex the white NEBNext UltraShear for 5-10 seconds prior to use and place on ice.
5. Add the following components to a 0.2 mL thin wall PCR tube on ice:

| Component                                  | Volume per library |
| ------------------------------------------ | ------------------ |
| gDNA combined with control (from step 2)   | 26 uL              |
| NEBNext UltraShear Reaction Buffer (white) | 14 uL              |
| NEBNext UltraShear (white)                 | 4 uL               |
| **total volume**                           | **44 uL**          |
>a master mix can be prepared by combining the UltraShear Reaction Buffer and UltraShear on ice. Vortex the master mix 5-10 seconds and briefly spin in a microcentrifuge. Use master mix immediately

6. Vortex the reaction for 5-10 seconds and briefly spin down
7. In a preheated thermal cycler, run the following program:
	- 25-35 minutes at 37°C
	- 15 minutes at 65°C
	- Hold at 4°C
	>if working with fragmented/degraded DNA with low integrity, fragment with UltraShear for less time (5-15 minutes at 37°C)
8. This is a ==**safe stopping point**==! Samples can be stored overnight at -20°C

### End Prep of Fragmented DNA
#### Materials until next stopping point
- fragmented DNA
- 500 mM DTT (from UltraShear kit)
- Ultra II End Prep Enzyme Mix (from EM-seq kit)
- EM-seq Adaptor
- Ligation Enhancer
- Ultra II Ligation Master Mix
#### Protocol
1. On ice, mix the following components in a sterile nuclease-free PCR tube:
	>***Note***: the Ultra II End Prep Reaction Buffer and the DTT from the EM-seq v2 Kit are *not* used in this protocol. These reagents come from UltraShear 

| Component                            | Volume    |
| ------------------------------------ | --------- |
| Fragmented DNA (from step 7 above)   | 44 uL     |
| 500 mM DTT (green)                   | 2 uL      |
| NEBNext Ultra II End Prep Enzyme Mix | 3 uL      |
| **total volume**                     | **49 uL** |
>a master mix can be prepared by combining the 500 mM DTT and Ultra II End Prep Enzyme Mix on ice, then pipette mix the master mix and briefly spin down. use the master mix immediately

2. Mix thoroughly by vortexing 1-2 seconds or by pipetting up and down at least 10 times and centrifuge briefly (**note**: it is important to mix well!)
3. Place in a thermal cycler with the heated lid set to at least 75°C and run the following program:
	- 15 minutes at 20°C
	- 15 minutes at 65°C
	- Hold at 4°C

### Ligation of EM-seq Adaptor
1. On ice, add the following components directly to the end prep reaction mixture and mix well:

| Component                                     | Volume      |
| --------------------------------------------- | ----------- |
| End Prep reaction mixture (from step 3 above) | 49 uL       |
| NEBNext EM-seq Adaptor (red)                  | 2.5 uL      |
| NEBNext Ligation Enhancer (red)               | 1 uL        |
| NEBNext Ultra II Ligation Master Mix (red)    | 30 uL       |
| **total volume**                              | **83.5 uL** |
>the ligation enhancer and master mix can be mixed ahead of time and is stable for at least 8 hours at 4°C. Do not premix the ligation master mix, enhancer, and EM-seq adaptor prior to use. Premix adaptor and sample and then add the other ligation reagents.

2. Mix thoroughly by vortexing 1-2 seconds or by pipetting up and down at least 10 times and spin down
>**Caution**: the ligation master mix is viscous. care should be taken to ensure adequate mixing of the ligation reaction, as incomplete mixing will result in reduced ligation efficiency. the presence of a small amount of bubbles will not interfere with performance.

3. Place in a thermal cycler and run the following program ***with the heated lid off***:
	- 15 minutes at 20°C
	- Hold at 4°C
4. This is a ==**safe stopping point**==! Samples can be stored overnight at -20°C.

### Clean-Up of Adaptor Ligated DNA
#### Materials until next stopping point
- sample DNA from above
- Sample purification beads
- 80% fresh ethanol (enough for 2 washes)
- magnetic stand
- Elution buffer
- new PCR tubes
- Carrier DNA (if <10 ng DNA input)
#### Protocol
1. Vortex sample purification beads to resuspend
2. Add 93 uL (1.1X ratio) or resuspended sample purification beads to each sample. Mix well by pipetting up and down at least 10 times. Be careful to expel all of the liquid out of the tip during the last mix.
3. Incubate samples on bench top for at least 5 minutes at room temperature.
4. Place the tubes against an appropriate magnetic stand to separate the beads from the supernatant.
5. After  minutes (or when the solution is clear), carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets (**Do NOT remove the beads**)
6. Add 200 uL of 80% EtOH to the tubes while on the magnetic stand. Incubate at room temperature for 30 seconds, and then carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets.
7. Repeat the EtOH washes (step 6) for a total of 2 washes. Be sure to remove all visible liquid after the second wash using a p10 pipette tip.
8. Air dry the beads for 1-2 minutes while the tubes are on the magnetic stand with the lid open
	- **Caution**: Do not over-dry the beads. This may result in lower recovery of DNA targets. Elute the samples when the beadsare still dark brown and glossy looking, but when all visible liquid has evaporated. When the beads turn lighter brown and start to crack, they are too dry.
9. Elution options A or B
	- **Option A**: for > 10 ng DNA input
		- Remove the tubes from the magnetic stand. Elute the DNA targets from the beads by adding 29 uL of Elution Buffer (white)
		- Mix well by pipetting up and down 10 times. Incubate for at least 1 minute at room temperature. If necessary, quickly spin the sample to collect the liquid from the sides of the tube before placing back on the magnetic stand.
		- Place the tube on the magnetic stand. After 3 minutes (or whenever the solution is clear), transfer 28 μl of the supernatant to a new PCR tube.
	- **Option B**: for < 10 ng DNA input
		- **Note:** only to be added if adaptor ligation has occurred. do not use with DNA that will not have adaptors ligated before conversion
		- Remove the tubes from the magnetic stand. Elute the DNA targets from the beads by adding 28 μl of  Elution Buffer (white)
		- Mix well by pipetting up and down 10 times. Incubate for at least 1 minute at room temperature. If necessary, quickly spin the sample to collect the liquid from the sides of the tube before placing back on the magnetic stand.
		- Place the tube on the magnetic stand. After 3 minutes (or whenever the solution is clear), transfer 27 μl of the supernatant to a new PCR tube.
		- Add 1 μl of the NEBNext Carrier DNA (red) to 27 μl of DNA from the step above.
10. This is a ==**safe stopping point**==! Samples can be stored overnight at -20°C.

### Protection of 5mC and 5hmC
#### Materials until next stopping point
- TET2 Reaction Buffer
- TET2 Reaction Buffer Supplement
- T4-BGT
- T4-BGT Dilutent
- UDP-Glucose
- DTT
- TET2
- Diluted Fe(II) Solution
- Stop Reagent
- Nuclease-free water
#### Protocol
1. Prepare TET2 Buffer. Use Option A if you have # E8015S/#E8015G (24 reactions/G size) and Option B if you have # E8015L(96 reactions).
	- **Note**: The TET2 Reaction Buffer Supplement is lyophilized. Centrifuge before use to ensure it is at the bottom of the tube.
	- **Option A:** Add 100 μl of TET2 Reaction Buffer (yellow) to one tube of TET2 Reaction Buffer Supplement (yellow) and mix well (for the 24-reaction/G size kit). Write date on tube.
	- **Option B:** Add 400 μl of TET2 Reaction Buffer (yellow) to one tube of TET2 Reaction Buffer Supplement (yellow) and mix well (for the 96-reaction kit). Write date on tube.
	>**Note**: the reconstituted buffer should be stored at -20°C and discarded after 4 months
2. Prepare diluted T4-BGT (yellow)
	- **Only for ≤ 10 ng DNA input**: Dilute the T4-BGT (yellow) 1:10 using the T4-BGT Diluent (yellow)
		- For example, add 9 μl of T4-BGT Diluent (yellow) to 1 μl of T4-BGT (yellow) and mix by vortexing for 1–2 seconds. Briefly centrifuge before use.
	>**Note**: The diluted T4-BGT should be used immediately and discarded after use.
3. On ice, add the following components directly to the EM-seq adaptor ligated DNA:
	>**Note**: undiluted T4-BGT is used for samples > 10 ng, diluted is used for samples < 10 ng

| Component                                                                                            | Volume    |
| ---------------------------------------------------------------------------------------------------- | --------- |
| EM-seq adaptor ligated DNA (from earlier steps)                                                      | 28 uL     |
| TET2 Reaction Buffer (yellow; TET2 Reaction Buffer Supplement reconstituted in TET2 Reaction Buffer) | 10 uL     |
| UDP-Glucose (yellow)                                                                                 | 1 uL      |
| DTT                                                                                                  | 1 uL      |
| T4-BGT or diluted T4_BGT (yellow)                                                                    | 1 uL      |
| TET2 (yellow)                                                                                        | 4 uL      |
| **total volume**                                                                                     | **45 uL** |
>Mix thoroughly by vortexing 1–2 seconds or by pipetting up and down at least 10 times and centrifuge briefly. For multiple reactions, a master mix of the reaction components can be prepared before addition to the sample DNA. 5mC/5hmC oxidation is initiated by the addition of the Fe(II) solution to the reaction in the next step.

4. Dilute the 500 mM Fe(II) Solution by adding 1 uL to 1249 uL of water
>**Note**: The 500 mM Fe(II) (yellow) solution color can vary between colorless to yellow, this is normal. Use the dilutedsolution immediately, do not store it. Discard after use. 

5. Combine diluted Fe(II) Solution and reaction mixture (from step 3 above) as described below:

| Component                             | Volume    |
| ------------------------------------- | --------- |
| Reaction mixture (from step 3)        | 45 uL     |
| Diluted Fe(II) Solution (from step 4) | 5 uL      |
| **total volume**                      | **50 uL** |
6. Mix thoroughly by vortexing 1-2 seconds or by pipetting up and down at least 10 times and spin down
7. Place in thermal cycler, and run the following program **with the heated lid set to at least 45°C**:
	- 1 hour at 37°C
	- Hold at 4°C
8. Transfer the samples to ice and add 1 uL of Stop Reagent (yellow)

| Component                   | Volume    |
| --------------------------- | --------- |
| Protected DNA (from step 7) | 50 uL     |
| Stop Reagent (yellow)       | 1 uL      |
| **total volume**            | **51 uL** |
9. Mix thoroughly by vortexing 1-2 seconds or by pipetting up and down at least 10 times and spin down
10. Place in thermal cycler, and run the following program **with the heated lid set to at least 45°C**:
	- 30 minutes at 37°C
	- Hold at 4°C
11. This is a ==**safe stopping point**==! Samples can be stored overnight at either 4°C in the thermal cycler or at -20°C in the freezer.

### Clean-Up of Protected DNA
#### Materials until next stopping point
- Sample purification beads
- magnetic stand
- 80% fresh ethanol (enough for two washes)
- Elution buffer
- new PCR tubes
#### Protocol
1. Vortex NEBNext Sample Purification Beads to resuspend
2. Add 50 μl (1X ratio) of resuspended NEBNext Sample Purification Beads to each sample. Mix well by pipetting up and down at least 10 times. Be careful to expel all of the liquid out of the tip during the last mix.
3. Incubate samples on bench top for at least 5 minutes at room temperature
4. Place the tubes against an appropriate magnetic stand to separate the beads from the supernatant.
5. After 5 minutes (or when the solution is clear), carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets (**Caution**: do not discard the beads).
6. Add 200 μl of 80% ethanol to the tubes while on the magnetic stand. Incubate at room temperature for 30 seconds, and then carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets.
7. Repeat the ethanol wash once for a total of two washes. Be sure to remove all visible liquid after the second wash using a p10 pipette tip.
8. Air dry the beads for 30 seconds – 1 minute while the tubes are on the magnetic stand with the lid open
	- **Caution**: Do not over-dry the beads. This may result in lower recovery of DNA targets. Elute the samples when the beads are still dark brown and glossy looking, but when all visible liquid has evaporated. When the beads turn lighter brown and start to crack, they are too dry.
9. Remove the tubes from the magnetic stand. Elute the DNA targets from the beads by adding 17 μl of Elution Buffer (white) 
10. Mix well by pipetting up and down 10 times. Incubate for at least 1 minute at room temperature. If necessary, quickly spin the sample to collect the liquid from the sides of the tube before placing back on the magnetic stand.
11. Place the tube on the magnetic stand. After 3 minutes (or whenever the solution is clear), transfer 16 μl of the supernatant to a new PCR tube.
	- **Caution**: Carrying even a small amount of beads forward can lead to inefficient deamination.
12. This is a ==**safe stopping point**==! Samples can be stored overnight at -20°C

### Denaturation of DNA
>all sample input ranges (0.1-200 ng) follow the same denaturation and deamination conditions
#### Materials until next stopping point
- Formamide
- pre-chilled metal cooling block or ice
- Nuclease-free water
- Deamination reaction buffer
- recombinant albumin
- APOBEC
#### Protocol
#### with Formamide
>see online protocol for sodium hydroxide option
1. Pre-heat thermal cycle to 85°C **with the heated lid set to at least 105°C**
2. Add 4 uL formamide to the 16 uL of protected DNA (from previous section). Mix thoroughly by vortexing 1-2 seconds or by pipetting up and down at least 10 times and spin down.
3. Incubate at 85°C for 10 minutes in the pre-heated thermal cycler
4. Immediately place in a pre-chilled metal cooling block on ice and allow the sample to fully cool (~2 minutes) before proceeding to the next section. If a metal cooling block is not available, place on ice and ensure proper contact with the tube walls.

### Deamination of Cytocines
1. On ice, add the following components to the denatured DNA:
>For multiple reactions, a master mix of the reaction components can be prepared before addition to the denatured DNA.

| Component                             | Volume    |
| ------------------------------------- | --------- |
| Denatured DNA (from previous section) | 20 uL     |
| Nuclease-free water                   | 14 uL     |
| Deamination Reaction Buffer           | 4 uL      |
| Recombinant Albumin                   | 1 uL      |
| APOBEC                                | 1 uL      |
| **total volume**                      | **40 uL** |
2. Mix thoroughly by vortexing 1–2 seconds or by pipetting up and down at least 10 times and spin down
3. Place in a thermal cycler, with settings and program dependent on input DNA:
	- **Option A (inputs < 100 ng)**:
		- heated lid set to at least 85°C
		- 10 minutes at 37°C
		- 10 minutes at 42°C
		- 10 minutes at 50°C
		- 2 minutes at 75°C
		- Hold at 4°C
	- **Option B (required for inputs > 100 ng and can be used for all inputs**):
		- heated lid set to at least 45°C
		- 3 hours at 37°C
		- Hold at 4°C
4. This is a ==**safe stopping point**==! Samples can be stored overnight at either 4°C in the thermal cycler or at -20°C in the freezer
>**Note**: The samples move directly into PCR with no bead clean up

### PCR Amplification
#### Materials until next stopping point
- NEBNext LV UDI Primer Pair
- Q5U Master Mix
#### Protocol
1. On ice, add the following components to the deaminated DNA from the section above:

| Component                           | Volume    |
| ----------------------------------- | --------- |
| Deaminated DNA (from section above) | 40 uL     |
| NEBNext LV UDI Primer Pair          | 5 uL      |
| NEBNext Q5U Master Mix (blue)       | 45 uL     |
| **total volume**                    | **90 uL** |
2. Mix thoroughly by vortexing or by pipetting up and down at least 10 times, spin down
3. Place the tube in a thermal cycler **with the heated lid set to 105°C** and perform PCR amplification using the following cycling conditions:

| Cycle Step           | Temp | Time       | Cycles |
| -------------------- | ---- | ---------- | ------ |
| Initial denaturation | 98°C | 30 seconds | 1      |
| Denaturation         | 98°C | 10 seconds | 4-14   |
| Annealing            | 62°C | 30 seconds |        |
| Extension            | 65°C | 60 seconds |        |
| Final extension      | 65°C | 5 minutes  | 1      |
| Hold                 | 4°C  | infinity   |        |

| DNA input | PCR cycles |
| --------- | ---------- |
| 200 ng    | 4-5        |
| 50 ng     | 5-6        |
| 10 ng     | 8          |
| 1 ng      | 11         |
| 0.1 ng    | 14         |
4. This is a ==**safe stopping point**==! Samples can be stored overnight at either 4°C in the thermal cycler or at -20°C in the freezer

### Clean-Up of Amplified Libraries
#### Materials until next stopping point
- Sample purification beads
- 80% fresh ethanol
- 1X TE (10 mM Tris-HCl pH 8.0, 1mM EDTA)
- new PCR tubes
#### Protocol
>**Caution**: The Sample Purification Beads behave differently during the post-PCR clean-up. After the bead washes, do not over dry the beads as they become very difficult to resuspend.
1. Vortex NEBNext Sample Purification Beads to resuspend.
2. Add 72 μl (0.8X ratio) of resuspended NEBNext Sample Purification Beads to each sample. Mix well by pipetting up and downat least 10 times. Be careful to expel all of the liquid out of the tip during the last mix.
3. Incubate samples on bench top for at least 5 minutes at room temperature.
4. Place the tubes against an appropriate magnetic stand to separate the beads from the supernatant.
5. After 5 minutes (or when the solution is clear), carefully remove and discard the supernatant. Be careful not to disturb the beadsthat contain DNA targets (**Caution**: do not discard the beads).
6. Add 200 μl of 80% ethanol to the tubes while on the magnetic stand. Incubate at room temperature for 30 seconds, and then carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets.
7. Repeat the wash once for a total of two washes. Be sure to remove all visible liquid after the second wash using a p10 pipette tip.
8. Air dry the beads for 1–2 minutes while the tubes are on the magnetic stand with the lid open. 
	- **Caution**: Do not over-dry the beads. This may result in lower recovery of DNA targets. Elute the samples when the beads are still dark brown and glossy looking, but when all visible liquid has evaporated. When the beads turn lighter brown and start to crack they are too dry.
9. Remove the tubes from the magnetic stand. Elute the DNA targets from the beads by adding 21 μl of Elution Buffer (white). 
	- **Optional**: For long term storage of libraries, 21 μl of 1X TE (10 mM Tris-HCl pH 8.0, 1 mM EDTA) or Low TE (10 mM Tris-HCl pH 8.0, 0.1 mM EDTA) can be used.
10. Mix well by pipetting up and down 10 times. Incubate for at least 1 minute at room temperature. If necessary, quickly spin the sample to collect the liquid from the sides of the tube before placing back on the magnetic stand.
11. Place the tube on the magnetic stand. After 3 minutes (or whenever the solution is clear), transfer 20 μl of the supernatant to a new PCR tube.
12. This is a ==**safe stopping point**==! Samples can be stored overnight at either 4°C in the thermal cycler or at -20°C in the freezer

### Library Quantification and Sequencing
1. Use an Agilent TapeStation or Bioanalyzer to determine the size distribution and concentration of the libraries.
2. EM-seq libraries can be sequencing using the preferred Illumina platform. Typical read lengths are 2 x 756, 2 x 100, or 2 x 150 bp.