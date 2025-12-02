//ShellAreasTrainSIOXBatch.ijm
//October, 2025
//Teresa Vaillancourt

//Citation:
//SIOX image segmentation
//Friedland, G., Jantz, K., & Rojas, R. (2005). 
//SIOX: Simple Interactive Object Extraction in Still Images. 
//Proceedings of the IEEE International Symposium on Multimedia (ISM'05), pp. 253-259

run("Close All");
ymax = screenHeight;
xmax = screenWidth;

Dialog.create("REQUIRED ACTION");
Dialog.setLocation(xmax/2,ymax/2);
Dialog.addMessage(" Please select a representative image.", 16, "red");
Dialog.show()
path = File.openDialog("Select a File");
open(path);

//Manually isolate objects using SIOX segmenter  -- see above for citation.
//-- use line or other ROI tool to define "Background and Foreground regions. Typically check Allow multiple foreground components box.
//--train classifier --define more regions and retrain as necessary.
//--Show segmentation result in ImageJ.
//"OK" Segmentation dialog box to continue.

setTool("line");
run("SIOX: Simple Interactive Object Extraction");
Dialog.createNonBlocking("Train SIOX Segmentor");
Dialog.setLocation(xmax/2,ymax/2);
Dialog.addMessage(" 1. Check the Allow multiple... box, then draw short line segments \n   through representative Foreground (Shell) and/or background regions.\n \n 2. Segment and Reset to modify as needed.\n \n 3. Press the SIOX Save Segmentor button to save file in the \n  working directory. Recommended name SEGMENTOR.SIOX. \n  \n 3. Press OK to end macro.", 16, "red");
Dialog.addHelp("https://imagej.net/plugins/siox#user-manual")
Dialog.show();
run("Close All");
