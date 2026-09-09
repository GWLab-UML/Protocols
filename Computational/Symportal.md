Created Sept 2026 by CCD
## Protocol
Tips to easily make the datasheet when you have many samples and sequences:
https://github.com/cdesouza02/BEL_16S_ITS2/blob/main/BEL_ITS2_outputs/1_symportal.ipynb

#### Download ITS2 Sequences onto device
1. Download your ITS2 sequences as .fastq.gz from the lab hard drive (or unity)
	1. Your sequences must have the SYM_VAR primers in them. *Trimmed sequences will not work in Symportal)

#### Prep Symportal Submission Sheet
1. Download .xlxs template sheet from Symportal submission page
2. Add your sample list to "sample_name" column. 
	1. *Make sure to include all control samples*
	2. for sample_type column select "pcr_control"
	3. differentiate controls by sequencing batch. For example a negative control from sequencing run 1 should be labelled "Negative_1" not "Negative". This way there will not be any duplicate sample ids in the symportal data sheet *symportal cannot use duplicate sample names*
3. **Ensure that the forward and reverse sequence files are properly labelled and correspond to the correct sample**. This is critical for Symportal to do the data analysis.
	1. To do so, try adapting the following[ code ](https://github.com/cdesouza02/BEL_16S_ITS2/blob/main/BEL_ITS2_outputs/1_symportal.ipynb)to fit your needs. 
4. Host_info:
	1. Find coral host taxonomy using websites such as [World Register of Marine Species](https://www.marinespecies.org/aphia.php?p=taxdetails&id=758261)
5. Sampling_info
	1. Says "If applicable" on data sheet. However symportal will not let you upload without this info. 
	2. Find coordinates and depth in sctld_tracking -> location of interest
	3. Find collection_date in https://github.com/sagw/SCTLD_samples/tree/main/Sample_Data -> location of interest -> ColonyData
6. Additional columns
	1. Some additional columns to add to symportal that will make data analysis easier include:
	2. transect & colony tag number
	3. Health status & Bleaching condition
	4. Tissue Loss percentage



## Symportal vocab: 

| Pre-MED sequences  | Fasta file containing sequences from published samples that have been through the SymPortal quality control pipeline but have not yet been through Minimum Entropy Decomposition. 3,591,132 sequences. Last updated: 2024-02-13. |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Post-MED sequences | Fasta file containing sequences from published samples that have been through the SymPortal quality control pipeline and Minimum Entropy Decomposition. 72,040 sequences. Last updated: 2024-02-13.                              |

[Minimum Entropy Decomposition (MED)](https://doi.org/10.1038/ismej.2014.195) provides a computationally efficient means to partition marker gene datasets into ‘MED nodes’, which represent homogeneous operational taxonomic units. By employing Shannon entropy, MED uses only the information-rich nucleotide positions across reads and iteratively partitions large datasets while omitting stochastic variation. When applied to analyses of microbiomes from two deep-sea cryptic sponges _Hexadella dedritifera_ and _Hexadella_ _cf_. _dedritifera_, MED resolved a key Gammaproteobacteria cluster into multiple MED nodes that are specific to different sponges, and revealed that these closely related sympatric sponge species maintain distinct microbial communities. MED analysis of a previously published human oral microbiome dataset also revealed that taxa separated by less than 1% sequence variation distributed to distinct niches in the oral cavity. The information theory-guided decomposition process behind the MED algorithm enables sensitive discrimination of closely related organisms in marker gene amplicon datasets without relying on extensive computational heuristics and user supervision.