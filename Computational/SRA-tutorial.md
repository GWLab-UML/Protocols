https://www.ncbi.nlm.nih.gov/sra
Create an NCBI/SRA account 

Then go to: Submit to SRA

Fill out the 2 different metadata sheets. One describes the samples, the other describes the sequence data
Then upload the sequence data

One way to upload sequence data is with an FTP connection:

Navigate to directory with the data you want to upload

Initialize ftp
```
ftp -i
open ftp-private.ncbi.nlm.nih.gov
```
Add username
```
subftp
```
Add password provided through SRA portal (unique for each project/user)

Move to account folder provided by SRA portal (unique for each project/user)
```
cd uploads/nikea_ulrich_uml.edu_XXXXX
```
Make a new subfolder (this is required!) that is meaningful to you and move into it
```
mkdir new_folder_name
cd new_folder_name
```
Put files there (mput for multiple files)
```
mput *.fastq.gz
```

Return back to the submission portal page and select preload folder (new_folder_name), then continue submission.
*Note: it takes at least 10 minutes for uploaded files to become available for selection within a submission.*


SRA (sequence read archive) [https://submit.ncbi.nlm.nih.gov/about/sra/](https://submit.ncbi.nlm.nih.gov/about/sra/)

Good resource:
[https://rachaellappan.github.io/SRA/](https://rachaellappan.github.io/SRA/)
