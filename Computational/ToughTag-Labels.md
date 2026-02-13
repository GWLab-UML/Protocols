# ToughTag-Labels
## Resources:
[Formatting Instructions for Laser Tough-Tags in Microsoft Word](https://www.divbio.com/content/files/laser_instructions/laser_tough-tag_instructions_1.pdf)
- this document is referenced at the bottom of the tough tag sheet - it's a little outdated, so here are the steps that work with the most current version of Word
[Print labels for your mailing list - Microsoft Support](https://support.microsoft.com/en-us/office/print-labels-for-your-mailing-list-276a2cd1-74d2-43d0-ab5a-b90460358ad5#MergeLabels=macOS)
- this support page from Microsoft is also useful to help with troubleshooting/if you get lost in steps below
  
## Tutorial
#### Input data
1. before you begin in word, paste label names into a single column in Excel
	- you need to name your column
	- for example, I have a list of sample names so my excel file looks like this:

| label                                |
| ------------------------------------ |
| 2024_Cont01_Null_W01_RNAlater_Gill   |
| 2024_Cont01_Null_W01_RNAlater_Gut    |
| 2024_Cont01_Null_W01_RNAlater_Muscle |
| 2024_Cont01_Null_W01_RNAlater_Mantle |
| 2024_Cont01_Null_W01_PBS_Gill        |

#### Creating custom labels
1. open Word 
2. click on Mailings > Labels
3. click options > New Label…
4. enter in the label dimensions/info as seen on the bottom of the above [PDF](https://www.divbio.com/content/files/laser_instructions/laser_tough-tag_instructions_1.pdf) or according to the manufacturer's website
5. click OK - this brings you back to the first/main pop-up window you had
6. a grid of dotted lines will appear of where your labels will be 

#### Generating the labels
1. click Start Mail Merge > Labels > click on your created label
	- a grid of dotted lines will appear of where your labels will be 
	- there will only be one page of your labels - if your sample list has more than can fit in one page, it will take care of this later 
2. in the Mailings tab, Select Recipients > File Maker Pro
	- a finder window will pop up - select your excel file with the label names
	- now every table cell in your Word document should say «Next Record»
3. while clicked in the first cell, click on Insert Merge Field in the Mailings Tab and click on the first option
	- in my case, my column name is 'label', so label is the option that comes up for me from my excel sheet
	- your column name (again, mine is «label») will appear in the first box
4. Click Update Labels - this will put «label» in every cell 
5. Click Preview Results - this allows you to see every label/sample name in the cell 
6. Click Finish & Merge > Edit Individual Documents
	- this will generate a new document with multiple pages that fit all of your labels