
## Microbiome enrichment protocol
This is the adapted protocol for the New England Biolabs Microbiome Enrichment kit, specifically for Coral DNA:

https://www.neb.com/products/e2612-nebnext-microbiome-dna-enrichment-kit#Product%20Information

Protocol:https://www.neb.com/protocols/2013/04/18/protocol-for-use-with-nebnext-microbiome-dna-enrichment-e2612

Reagents expressed in ==**bold**== need a calculation from this document. Use the following spreadsheet to determine your DNA input and reagent input volumes:
[[
]]https://docs.google.com/spreadsheets/d/1O_NJCFvnBztKm_G88Sx-gEKD7CwR44iEaRjyxS_N32E/edit#gid=0

#### Materials/Prep
- **Get ice** 
- **UV sterilize pipette tips, (1) 1.5 eppendorf, 3x samples lo bind eppendorf (4x if eluting & 5x cleaning host too) , 1x 15mL or 50mL falcon tube (for bind/wash buffer)**
- **Thaw Bind/wash buffer**
- NEB Protein A Magnetic Beads 
- MBD2-Fc protein
- DNase free water 
- 30 uL sample dna (don't take out of fridge until needed)
- magnetic rack 
- 1X TE (elution buffer)
- Proteinase K 
- Clean NGS bead aliquots 



### Prepare beads - Pt1
~1 hr 

`Begin thawing Bind/wash buffer at beginning of protocol.`
1. Resuspend NEBNext Protein A Magnetic Beads by gently pipetting the slurry up and down until the suspension is homogeneous. Alternatively, rotate the tube on a rotating mixer gently for 15 minutes at 4°C. Do not vortex.

2. In a new microcentrifuge tube, add ==X μl of **MBD2-Fc protein**== and ==**Y μl of Protein A Magnetic Beads**==. Mix by pipetting up and down until the beads are completely homogeneous, at least 5-10 times.

3. Mix the bead-protein mixture by placing the tube in a rotating mixer for 10 minutes at room temperature (~20 ºC).

4. Prepare the 1X Bind/wash Buffer on ice by diluting 1 part NEBNext Bind/wash Buffer (5X) with 4 parts DNase-free water. Only 3 mL of buffer is needed to prepare the beads. 
	-  If prepping the buffer for the rest of the protocol too, 1mL per sample is needed. Only prep for the remainder of the protocol if completing on the same day.

5. Briefly spin the tube and place on the magnetic rack for 2–5 minutes or until the beads have collected to the wall of the tube and the solution is clear.

6. Carefully remove the supernatant with a pipette without disturbing the beads.

7. Add 1 ml of 1X Bind/wash Buffer (kept on ice) to the tube to wash the beads. Pipette up and down until the beads are completely homogeneous, at least 5-10 times.

8. Mix the beads on a rotating mixer for 3 minutes at room temperature.

9. Briefly spin the tube and place on the magnetic rack for 2–5 minutes or until the beads have collected to the wall of the tube and the solution is clear.

10. Carefully remove the supernatant with a pipette without disturbing the beads.

11. Repeat steps 7–10. (2 total washes with bind/wash buffer)

12. Remove the tube from the rack and add ==(Y) μl of **1X Bind/wash Buffer**== (kept on ice) to resuspend the beads. Mix by pipetting up and down a few times.

`The MBD2-Fc-bound magnetic beads are stable for up to 7 days at 4°C` 

### Capture Methylated Host DNA and Enriched Microbial DNA - Pt2
~1 hr 
1. Add 30 uL of input DNA and corresponding ==Z μl of **MBD2-Fc-bound magnetic beads**== to new tubes. Resuspend by pipetting up and down.
	- (Beads from above "Prepare Beads-Pt1" section.) Z uL of beads differs for each sample. If you change the amount of input DNA, Z changes. Check spreadsheet.

3. Add 7.5µl of ==**undiluted Bind/wash Buffer** (5X)== for a final concentration of 1X. Pipette the sample up and down until the beads are completely homogenous, at least 5-10 times. 
	- amount of bind/wash buffer depends on dna volume (check excel sheet)

4.  Agitate the tube on a rotating mixer for 15 minutes at room temperature with rotation.
 
4. Briefly spin the tube and place on the magnetic rack for 5 minutes until the beads have collected to the wall of the tube and the solution is clear.

5. Carefully remove the supernatant with a pipette, without disturbing the beads and transfer it to a clean microcentrifuge tube. 

`This supernatant contains the target MICROBIAL DNA. Store this sample at –20°C or proceed directly to purification.`

`The HOST DNA is bound to the left over beads at this stage, save these if future processing is desired.`

`If cleaning samples within the next few days only, store in 4°C to prevent multiple freeze/thaw.` 


### Optional Protocol for Eluting Captured Host DNA - Pt3
~ 1 hr 
*This step elutes the captured host DNA from the MBD2-Fc-bound magnetic beads.*
1. Prepare 1X Bind/wash Buffer (kept on ice) if not already prepped - 1 mL per sample. 1 part NEBNext Bind/wash Buffer (5X) with 4 parts DNase-free water. 
2. While the tube with the beads is still in the magnetic rack  (Pt2 - step 4), add 1 ml of 1X Bind/wash Buffer (kept on ice) to wash the beads.
3. Carefully remove the wash buffer with a pipette without disturbing the beads.
4. Add 150 μl of 1X TE (elution buffer) and 15 μl of Proteinase K to the sample pellet. 
5. Mix beads by gentle vortexing (1,200 rpm) or by flicking the tube. 

*(Note: The pellet may be difficult to resuspend initially due to the high concentration of genomic DNA bound to the beads.)*

6. Incubate the slurry in a heat block or thermomixer set at 65°C for 20 minutes, on 40-50 rpm or mix intermittently by flicking the tubes
7. Briefly centrifuge the sample at 13,000 rpm in a microcentrifuge.
8. Place the tube on the magnetic rack for 2–5 minutes or until the beads have collected to the wall of the tube and the solution is clear.
9. Carefully remove the supernatant and transfer to a fresh microcentrifuge tube.

`This eluted sample contains the methylated host DNA. Store this sample at –20°C, or proceed directly to purification via using AMPure XP bead cleanup or ethanol precipitation.` 
 
### Agencourt® AMPure® XP Cleanup - Pt4
~ 1 hr for each (micro, host separately), closer to 2hr with 16 samples

`Complete cleanup separately for host and microbial DNA.`

1. Vortex AMPure XP to resuspend.

2. If your enriched sample volume x 2.8 from the previous step exceeds your tube volume, split into two tubes.

3. Add 1.8X total sample volume of ==**resuspended AMPure XP (W)**== to the sample. Mix well by pipetting up and down at least 10 times. Be careful to expel all of the liquid out of the tip during the last mix.
	- Variable volumes of ampure for microbial dna
	- If 150 uL of host DNA, 297 uL ampure

5. Incubate samples for at least 5 minutes at room temperature.
*If your recovery is really low, or your sample has a super low concentration to begin with the increasing the bind step and elution step (before the sample goes onto the magnet each time) can help. I would mix, wait 2-5 min, then mix again and wait 2-5 min. This is only necessary for problem samples.

7. Place the tube on the appropriate magnetic stand to separate the beads from the supernatant. If necessary, quickly spin the sample to collect the liquid from the sides of the tube or plate wells before placing on the magnetic stand.

8. After 5 minutes (or when the solution is clear), carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets.

9. Add 400 μl of freshly prepared 80% ethanol to the tube/plate while in the magnetic stand. Incubate at room temperature for 30 seconds, and then carefully remove and discard the supernatant. Be careful not to disturb the beads that contain DNA targets.
	- prepare ethanol in biosafety hood too 
	- use ethanol on ice 

10. Repeat Step 8 once for a total of two washes. Be sure to remove all visible liquid after the second wash. If necessary, briefly spin the tube/plate, place back on the magnetic stand and remove traces of ethanol with a p10 pipette tip.

11. Air dry the beads for up to 5 minutes while the tube/plate is on the magnetic stand with the lid open.

*Caution: Do not over-dry the beads. This may result in lower recovery of DNA. Elute the samples when the beads are still dark brown and glossy looking, but when all visible liquid has evaporated. When the beads turn brown and start to crack, they are too dry.* 

10. Remove the tube from the magnetic stand. Elute the DNA target from the beads by adding 50 μl of 1X TE (Elution buffer) (use 25 μl for each tube if sample was split in two).
- heat TE buffer to ~60 degree C 

12. Mix well by pipetting up and down 10 times. Incubate for at least 10 minutes at room temperature. If necessary, quickly spin the sample to collect the liquid from the sides of the tube or plate wells before placing back on the magnetic stand.

13. Place the tube/plate on the magnetic stand. After 5 minutes (or when the solution is clear), transfer eluate to a new microcentrifuge tube (combine the eluates if sample was split in two).

`This supernatant contains the target DNA (Microbial or Host depending on your input sample). Measure concentration using Qubit or Nanodrop with Elution buffer as the blank. Store at –20°C` 