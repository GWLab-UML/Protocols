*Last updated: JM 5/29/26*
## Downloading videos
These video files can be very large, and thus to process them we store them on an external hard drive named “Shuckira”. 

Since we'll have a lot of cameras coming back from the field, it's really important to **only do one camera at a time** and **keep unlabeled SD cards isolated**.
### Disassembling GoPros
1. Grab a camera setup - cross ref with metadata file (for PIC, see [here](https://github.com/GWLab-UML/PIC/blob/main/VideoSurveys/video_metaData.csv)) for site information
	- double check the gopro and battery numbers are correctly matched
	- sometimes the same setup is used across multiple days - double check if this is true, as there might be multiple videos for multiple sites
2. Take off the external battery and place in a box
	- if all four charging lights are not on, then it needs to be charged and should be plugged in or placed in 'dead battery' box
	- if the battery is fully charged, replace the cord plug cap and store in the normal battery box
3. Remove the GoPro from the underwater housing 
	- if the GoPro was used in the field, soak the underwater housing in a freshwater bath for a few hours - otherwise, can be stored in the designated box
4. Place the foam 'battery holders' in a designated bag to be reused
5. Double check the internal battery - place into corresponding box for charged or dead batteries
6. Remove the microSD card from the GoPro - place into an SD converter
7. Replace the door on the GoPro and store in the designated box

### Offloading videos
1. Plug the SD card into a computer and open the folder with the video files 
2. Take stock of what's in the folder
	- was this camera used for multiple days/sites? 
	- are there multiple videos from the same site/deployment? (check this by opening the videos to see if they are cut off)
3. Rename the video:
	- Site_RepStandRepCamera_MonthYear_Location_vid#
		- Location options: 
			- R (wild oyster reef)
			- M (mudflat)
			- C (farm cage)
			- UC (farm under cage)
			- RO (rock)
	- for example - this site had multiple recordings for one deployment, so the name of these videos would be NSM3_B1_052026_M_vid1 and NSM3_B1_052026_M_vid2 ![](../../Images/Screenshot%202026-05-29%20at%2011.14.30%20AM.png) and from this name, we know that the videos are on the Parker River mudflat, replicate stand B and camera 1
4. Record the name of the video on the metadata csv (for PIC, see [here](https://github.com/GWLab-UML/PIC/blob/main/VideoSurveys/video_metaData.csv))
5. In the finder window, find the video size and record that 
6. Open the videos and record the video length
7. Rename the SD card so that it's unique from others
8. Navigate to the corresponding folder in Shuckira (external hard drive)
	- labeling in Shuckira : Project > Year > Survey Month > River > Site
9. Select all the videos on the SD card and drag and drop them to the folder in Shuckira
	- do NOT delete the originals off of the SD card 
10. Once all videos are renamed, recorded in metadata, and offloaded onto Shuckira, you can eject the SD card and remove it from the computer
11. SD cards are stored in a holder case and kept track of [here](https://github.com/GWLab-UML/MegaMetaData/blob/main/SDCardTracker.csv)