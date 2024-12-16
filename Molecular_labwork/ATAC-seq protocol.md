**Steps:**
1. For each rep, grow one or two 10-cm plates of well-synched worms aged to appropriate point.
2. Harvest nuclei
3. Standard ATAC-seq protocol
4. Library quality control
5. Sequence

Reagents & tools:
1.     2x NPB, made fresh (see recipes)
2.     Wheaton stainless steel tissue [homogenizer](http://www.amazon.com/Wheaton-Stainless-Dura-Grind-Grinder-Overall/dp/B00797LTQG) (7-ml, clearance 0.0005 inches![http://www.ncbi.nlm.nih.gov/corehtml/pmc/pmcents/x2009.gif](file:////Users/beckymcdonough/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image001.gif)=![http://www.ncbi.nlm.nih.gov/corehtml/pmc/pmcents/x2009.gif](file:////Users/beckymcdonough/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image001.gif)12.5![http://www.ncbi.nlm.nih.gov/corehtml/pmc/pmcents/x2009.gif](file:////Users/beckymcdonough/Library/Group%20Containers/UBF8T346G9.Office/TemporaryItems/msohtmlclip/clip_image001.gif)µm)
	Before use, clean it with: H2O, bleach, EtOH, milliPore H2O
3.     Nextera DNA Sample Preparation Kit
4.     NEBNext High-Fidelity 2X PCR Master Mix
5.     Qiagen mini elute columns
6.     Pure SYBR (not a master mix)
7.     1.5mL non-stick microfuge tubes
8.     Standard lab stocks

--------------------
## 1. **Harvesting nuclei**
- This is adapted from the FANS paper: [http://www.ncbi.nlm.nih.gov/pubmed/22467213](http://www.ncbi.nlm.nih.gov/pubmed/22467213)
- Using non-stick tubes helps with yield.

a. Before you start:
- chill Wheaton at 4°C
	- Do NOT chill at -20°C
- Make 4x NPB (see recipes)
- Immediately before beginning, use 4x NPB to make 2x NPB using fresh reagents
- Pre-chill centrifuge to 4°C
b. Thaw worm pellet (from above) on ice. *Perform all subsequent steps on ice.*
c. Transfer worms to a pre-chilled Wheaton stainless-steel tissue grinder. Add an equal volume of ice-cold 2x NPB.
	- Ensure the final volume is at least ~150µL or the Wheaton will not work well
d. Homogenize by doing 2 to 3 strokes but no more than 4.
	- More may burst the nuclei
e. Let the unbroken worms and big worm pieces settle to the bottom of the Wheaton
	- Approximately 5 minutes is generally enough for settling
f. Separate supernatant (which contains nuclei) from pellet by spinning at lowest possible speed (200g) in chilled centrifuge
g. Transfer supe to fresh tube, on ice
h. Resuspend pellet in NPB 2x
	- Again, try to ensure at least a total volume of ~150µL
i. Repeat steps D through H until there are no visible worm pieces, each time collecting the supe in the same tube
	- After the last sample wash out the Wheaton with extra 2xNPB
j. After pooling the supes, perform another 200g spin and transfer the supe to a different, final tube
	-This step is optional, but helpful
k. To pellet the nuclei, spin at 1000g for 10 min
l. Once the nuclei are pelleted, **COMPLETELY** remove the supe
	- **The nuclei will not be visible**, so make sure to note where the pellet should be – usually by placing the tube tab up before spinning
	- Leaving even a few µL can result in sequencing a lot of bacterial DNA if you’re working with larval or adult stages.
m. *Go directly to step 3*
n. If performing input control/gDNA prep:
	- Using embryos will avoid any bacterial contamination issues
	- Isolate gDNA from nuclei (standard approach):
		- ProteinaseK
		- RNase
		- Phenol/chloroform extract
	- Rather than using nuclei in step 3b (below), add 10 ng of very clean gDNA.  Otherwise treat it as other samples

## 2. **ATAC**
a. While pelleting nuclei above, prepare ATAC buffer: 25µL 2X tagmentation buffer, 22.5µL H2O
b. Resuspend the pelleted nuclei with 47.5µL of buffer from step 3a.
c. Add 2.5µL of tagmentation enzyme (i.e. Tn5)
d. Incubate at 37°C for 30mins, then move to 4°C
	- If performing several preps in sequence, let samples sit at 4°C for up to a few hours (longer may be okay), while completing subsequent samples.
e. Perform a standard Qiagen mini-elute column clean up
	- The only modification is that following the PE wash and subsequent spin, carefully suck off any droplets of remaining EtOH from the rubber gasket in the column
		- Be careful not to puncture the filter
		- This is because even 1µL of EtOH can be problematic when you’re eluting in 10µL
	- Elute in 10µL of warm EB
f. Samples can be frozen at -20°C until all preps are ready
g. Perform PCR amplification
	- Wait until all samples are ready
	- Set up a 50µL reaction using all 10µL of a sample as template
		- See attached Excel sheet for details
		- Assuming you’re multiplexing, each reaction should get a unique primer2 (The [supplement](http://www.nature.com/nmeth/journal/v10/n12/full/nmeth.2688.html#supplementary-information) of the original paper lists all of the primers you might need; we ordered ours as we would any other primer)
h. Perform the first 5 cycles, but then hold the reactions at 4°C
i. While those 5 cycles are running, set up the qPCR reactions
	- See Excel file for details
	- Which primer 2 you use doesn’t matter because they’re all similar enough to work
j. Use 5µL of the PCR from step h as template for the qPCR reaction
	- Use the same thermocycling steps as for step h
k. Once each sample in the qPCR has plateaued, find the number of cycles it took for each to reach the 1/3max fluorescence value
	- The idea is to make sure you amplify your samples to the beginning of the linear portion of the graph, so that you do not overamplify your libraries
l. Return to the original PCR in step h and let each sample continue the number of cycles noted in step k.
m. Once all are done, perform a standard Qiagen PCR clean up, elute in 25µL of warm water (or dilute TE), let stand for a few minutes to get optimal yield.

## 3. **Quality Control (QC) libraries & sequence**
a. Run ~3µL of sample on a 5% TBE gel (we use precast from biorad).
	- You’re looking for laddering of around 150bp which indicates that you have reads corresponding to mono-, di-, tri-, etc nucleosomes
	- This step can be skipped, but if you’re just starting it’s a good idea to perform.
		- If you don’t see laddering, you may want to further amplify your samples for QC, but do sequencing those libraries is not recommended as they will be overamplified
b. Submit a few µL to the bioAnalyzer, interrogating the fragments b/t 100 and 700bp.
	- There is a good chance that you will have larger fragments as well, and these are most likely gDNA flow through that will not stick to the sequencing chip, but they do complicate quantifying total DNA.
	- More accurate quantification can be performed using a qPCR based approach, see the original ATAC-seq paper._
c. Submit to the sequencer using the concentration you got from step b.
	- These are odd looking libraries and sequencing facilities may be surprised/concerned if they are expecting ChIP-seq looking libraries.  These libraries need to be clustered more tightly (i.e. put on more DNA than you normally would for a ChIP-seq library) and that’s because there is a portion of the DNA that is in fact not sequence-able because it doesn’t have the adaptors on it (the gDNA flow through from above). 
	- If your facility has not worked with ATAC-seq samples before, it may be worthwhile to try an experimental run with samples at a range of concentrations.

---------------------------
## Recipes:

**4x NPB stock (100 mL) – nuclear preparation buffer**

Final: 40 mM HEPES pH 7.6; 40 mM KCl; 6 mM MgCl2; 4 mM EGTA, 1 M sucrose, 0.10% Triton

| Reagent          | Amount  |
| ---------------- | ------- |
| Sucrose**        | 34.23   |
| H2O**            | 90.5 mL |
| 1 M HEPES pH 7.6 | 4 mL    |
| 1 M KCl          | 4 mL    |
| 1 M MgCl2        | 600 uL  |
| 500 mM EGTA      | 800 uL  |
| Triton           | 100 uL  |
** dissolve sucrose in H2O, then add the rest
Filter sterilize, then store at 4C.

**2x NPB working stock (5 mL)** – make fresh every time.

| Reagent                | Amount |
| ---------------------- | ------ |
| H2O                    | 1.7 mL |
| 4x NPB                 | 2.5 mL |
| 0.5 M NaF              | 500 uL |
| 0.25 M DTT             | 20 uL  |
| 1 M β-glycerophosphate | 200 uL |
| 1 M Na3VO4             | 10 uL  |
