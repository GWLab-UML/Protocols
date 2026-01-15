//ShellAreasApplySIOXBatch_2026.ijm
//November 2025
//Teresa Vaillancourt

//Updated for GW lab protocol Jan 14 2026 Jade Fiorilla

//Citation:
//SIOX image segmentation
//Friedland, G., Jantz, K., & Rojas, R. (2005). 
//SIOX: Simple Interactive Object Extraction in Still Images. 
//Proceedings of the IEEE International Symposium on Multimedia (ISM'05), pp. 253-259

//Before beginning, the user should open a representative image and
//measure the areas of the smallest and largest shells to obtain an 
//estimate of the minimum and maximum acceptable areas of recognized objects.

//User interface for specifying file locations and initial parameters. 
#@ String(label="Name of Data Set") NameOfDataSet
#@ File(label="Image directory  ", style="directory") ImageDirectory
#@ File(label="Choose .tif stack", style="file") path
#@ File(label="Segmentor file", style="open") SegmentorFile
#@ Integer(label="Lower limit of Object Area (px_sqd)", min=0, max=2000000, stepSize=10000) MinimumObjectArea
#@ Integer(label="Upper limit of Object Area (px_sqd)", min=0, max=200000000, stepSize=10000) MaximumObjectArea
#@ Float  (label="Lower limit of Object Circularity (0 to 1) ", style="format:#.##", min=0, max=1, stepSize=0.05) LowerLimitCirculaity

//Initialize and open images as a stack.
	run("Close All");
//Close Results table window if one is open.
	if (isOpen("Results")) {
    selectWindow("Results");
    run("Close");
} 	
//Close ROI Manager window if one is open.
	if (isOpen("ROI Manager")) {
    selectWindow("ROI Manager");
    run("Close");
}	
	RoiManager.useNamesAsLabels(false);
//Open pre-prepared .tif file (based on GW lab protocol)
	open(path);
	run("Set Scale...", "distance=0 known=0 unit=pixel");
	rename("temp");
	waitForUser("You may further crop or adjust the image stack before proceeding. \n When finished or if no adjustment is desired press OK to continue.");

// The specified SIOX segmentor file created using the ShellAreaslTrainSIOXBatch macro
// is applied to the stack to create masks of the original images. Each mask is then
// analyzed individually with the Analyze Particles ImageJ routine.
	run("Apply saved SIOX segmentator", "siox="+SegmentorFile);
	run("Stack to Images");
	NumberOpenImages = nImages(); //= Stack image + shell images
	ShellNumbers = newArray();
	ShellNumber = newArray();

	for (i=1; i<NumberOpenImages; i++) {
	    selectImage(i+1);
	    //Masked objects are analysed with the Analyze Particles Command
	    roiManager("reset");
	    run("Set Measurements...", "area shape feret's display add redirect=None decimal=2");
	    run("Analyze Particles...", "size="+MinimumObjectArea+ "-"+ MaximumObjectArea + " pixel circularity="+LowerLimitCirculaity+"-1.00 show=[Overlay]  display reset exclude include add");
	    run("Labels...", "color=black font=64 show draw bold");
	    //Image name is written onto the mask.
	    ImageName = getTitle();   
	    setColor(255, 255, 255);
	    setFont("SansSerif" , 64, "antialiased");
	    drawString(ImageName, 100, 100);
	    // Feret maximum diameter lines are drawn. These are the max width/length measurements.
	    NumberOfObjects = Overlay.size;
	    for (j=0; j<NumberOfObjects; j++) {
	      ShellNumber = j+1;
	      ShellNumbers = Array.concat(ShellNumbers, ShellNumber);
	      roiManager("select", j);
	      Roi.getFeretPoints(x,y);
	      setColor("red");
	      setLineWidth(5);
	      Overlay.drawLine(x[0], y[0], x[1], y[1]);
	      Overlay.drawLine(x[2], y[2], x[3], y[3]);
	      Overlay.show();
	    } 
	    run("Flatten");
	}

//Close Original image Mask windows
	for (i=NumberOpenImages; i>1; i--) {
	     selectImage(i);
	     close;
	}
	roiManager("reset");

//Create stack of original and analyzed images and delete original and mask stacks.
	run("Images to Stack", "use");
	run("Interleave", "stack_1=temp stack_2=Stack");
	selectImage("temp");
	close;
	selectImage("Stack");
	close;
	rename(NameOfDataSet+"_CombinedStack");
	wait(1000);

//Make corrections and save results or exit without saving.
	title = "Optional: Correct Selections";
	msg = "Scan through the Stack to find incorrectly analyzed or missing objects. \n \n The ROI tools can be used to correct and measure (ctrl-m) selections or to \n manually make additional measurements, e.g. of calibration objects, \n \n If the data set is satisfactory click the OK button to save data files to the \n image directory and exit the macro.  \n \n Otherwise, click Cancel to exit the macro without saving the results.";
	waitForUser(title, msg);


//Configure the Results table. The table contains two columns related to shell shape: 
//Min/Max is the ratio of the minimum Feret diameter to the maximum 
//Feret diameter; Circularity is an Imagej-defined variable that relates the object area to its circumference 
//in this case 4pi(area/perimeter^2), ranging from 1 to zero between a perfect circle and a straight line.
	Labels = Table.getColumn("Label");
	Areas = Table.getColumn("Area");
	MaxFerets = Table.getColumn("Feret");
	MinFerets = Table.getColumn("MinFeret");
	Circularities = Table.getColumn("Circ.");

	MinFeretToMaxFeretRatios = newArray();
		for (j=0; j<Table.size; j++) {
		   MinFeretToMaxFeretRatios[j] = MinFerets[j]/MaxFerets[j];
		}	
		
	Table.reset("Results");
	Table.setColumn("Image #", Labels);
	Table.setColumn("Shell #", ShellNumbers);
	Table.setColumn("Area px^2", Areas);
	Table.setColumn("Length px", MaxFerets);
	Table.setColumn("Width px", MinFerets);
	Table.setColumn("Width:Length ratio", MinFeretToMaxFeretRatios);
	Table.setColumn("Circularity", Circularities);

//Parameter and data files are saved in the working image directory.
//InitialSettingsFile
	InitialSettings = "Dataset = "+NameOfDataSet+"\n" + "Image directory = "+ImageDirectory+"\n"+ "TIFF = "+path+"\n"+"Segmentor file = "+SegmentorFile+"\n"+"Lower limit of Object Area (px_sqd) = "+MinimumObjectArea +"\n"+"Upper limit of Object Area (px_sqd) = "+ MaximumObjectArea +"\n"+ "Lower limit of Object Circularity (0 to 1) = "+LowerLimitCirculaity+"\n";
	InitialSettingsFile = File.open(ImageDirectory+File.separator+NameOfDataSet+"_Settings.txt");
	print(InitialSettingsFile, InitialSettings);
	File.close(InitialSettingsFile);
//ResultsTableFile
	ResultsTableFile = ImageDirectory+File.separator+NameOfDataSet+"_Results.csv";
	saveAs("Results", ResultsTableFile);
	selectWindow("Results");
	run("Close");
//CombinedStackFile
	CombinedStackFile = ImageDirectory+File.separator+NameOfDataSet+"_CombinedStack";
	selectWindow(NameOfDataSet+"_CombinedStack");
	saveAs("Tiff", CombinedStackFile);
	
//Clean up the desktop.	
	run("Close All");
	selectWindow("ROI Manager");
	run("Close");


