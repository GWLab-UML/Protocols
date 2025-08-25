# DNase Treatment for RNA
- Product: [TURBO DNA-free kit](https://www.thermofisher.com/order/catalog/product/AM1907), stored at -20ºC
- Protocol from ThermoFisher [User Guide](https://assets.thermofisher.com/TFS-Assets/LSG/manuals/1907M_turbodnafree_UG.pdf)
- *Last Updated: 08/18/2025 by JM*

This treatment removes DNA contamination from RNA and is done before library preparation for RNA-seq.

## Routine DNase treatment
*Note:* this protocol is for samples that contain <= 200 ug nucleic acid per uL (200,000 ng/uL). Use 1 uL TURBO DNase for up to 10 ug of RNA in a 50 uL reaction. These conditions will remove up to 2 ug of genomic DNA from total RNA in a 50 uL reaction. If there is more RNA (>200 ug nucleic acid per mL) that is severely contaminated with DNA (i.e., >2 ug DNA/50uL (40ng/uL)), use the **rigorous DNase treatment** (see below)

#### Prep
- set incubator to 37ºC
- UV PCR strip tubes and RNA-free 1.5mL tubes - label accordingly
- thaw DNAse kit

#### Protocol
1. Add 0.1 volume 10X TURBO DNase buffer and 1uL of TURBO DNase enzyme to the RNA, mix gently
	- RNA from [trizol extractions](https://github.com/GWLab-UML/Protocols/blob/1117f48bc9a43a20813e456bc6f4b4356f770a08/Molecular_labwork/Trizol%20RNA%20and%20DNA%20Extraction%20Protocol.md) are 30uL in volume; add 3uL buffer and 1uL enzyme
2. Incubate at 37ºC for 30 minutes
3. Resuspend the DNase inactivation reagent by flicking or vortexing the tube before use
	>*Note:* The DNase Inactivation Reagent may become difficult to pipette after multiple uses due to depletion of fluid from the interstitial spaces. If this happens, add a volume of Nuclease-free Water (supplied with the kit) equal to approximately 20–25% of the bed volume of the remaining DNase Inactivation Reagent, and vortex thoroughly to recreate a pipettable slurry.
4. Add resuspended DNase inactivation reagent (2 uL or 0.1 volume, whichever is greater), then mix well
	>**IMPORTANT!** always use at least 2 uL of DNase inactivation reagent, even if it is more than 0.1 volume
5. Incubate the sample for 5 minutes at room temperature. Flick the tube 2-3 times during the incubation period to keep the DNase inactivation reagent suspended.
	>*Note:* If room temperature cools below 22–26°C, move the tubes to a heat block or oven to control the temperature. Cold environments can inhibit inactivation of the TURBODNase Enzyme, leaving residual DNase in the RNA sample.
6. Centrifuge the samples at 10,000g for 1.5 minutes, then carefully transfer the supernatant containing the RNA to a fresh tube. Do not disturb the DNase inactivation reagent pellet.

## Rigorous DNase treatment
*Note:* Sample contains >200 μg nucleic acid per mL (200ng/uL) or RNA that is severely contaminated with DNA (i.e., >2 μg DNA/50 μL (40ng/uL)). These sample can be diluted prior to treatment, or if the sample cannot be diluted, simply increase the amount of TURBO DNase Enzyme to 2–3 μL (4–6 U). Increasing the amount of enzyme may successfully remove contaminating DNA from samples containing up to 500 μg/mL nucleic acid in a 10–100 μL reaction. However, the efficacy of treating highly concentrated nucleic acid samples depends on the absolute level of DNA contamination, and residual DNA may or may not be detectable by PCR after 35–40 cycles.

#### Prep
- set incubator to 37ºC
- UV RNA-free 1.5mL tubes and label

#### Protocol
1. Dilute the sample to 10 μg nucleic acid/50 μL (200 ng/uL) of total sample if possible.
	1. [dilution calculator](https://docs.google.com/spreadsheets/d/1gbe4WCgUxCHr_a1WV63z3jBjIRU369wQ1G4552Gvhjw/edit?gid=0#gid=0)
2. Add 0.1 volume 10X TURBO DNase™ Buffer to the RNA, then mix gently.
3. Add TURBO DNase Enzyme to the RNA, then mix gently.
	1. Use 1 μL of TURBO DNase™ Enzyme for diluted samples.
	2. Use 2–3 μL (4–6 U) of TURBO DNase™ Enzyme for samples that cannot be diluted.
		(*Optional*) DNase treatment can be enhanced by performing a two-step incubation. To perform two-step incubation, add half the amount of TURBO DNase™ Enzyme to the sample.
4. Incubate samples at 37°C for 20–30 minutes.
		(*Optional*) If performing two-step incubation, incubate at 37°C for 30 minutes, then add the remaining half of the TURBO DNase Enzyme from the previous step, and incubate for another 30 minutes.
5. Resuspend the DNase Inactivation Reagent by flicking or vortexing the tube before use.
	>*Note:* The DNase Inactivation Reagent may become difficult to pipette after multiple uses due to depletion of fluid from the interstitial spaces. If this happens, add a volume of Nuclease-free Water (supplied with the kit) equal to approximately 20–25% of the bed volume of the remaining DNase Inactivation Reagent, and vortex thoroughly to recreate a pipettable slurry.
6. Add 0.2 volumes of resuspended DNase Inactivation Reagent, then mix well.
7. Incubate the sample for 5 minutes at room temperature. Flick the tube 2–3 times during the incubation period to keep the DNase Inactivation Reagent suspended.
	>*Note:* If room temperature cools below 22–26°C, move the tubes to a heat block or oven to control the temperature
8. Centrifuge the samples at 10,000g for 1.5 minutes, then carefully transfer the supernatant containing the RNA to a fresh tube. Do not disturb the DNase Inactivation Reagent pellet. 