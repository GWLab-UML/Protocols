Storage and calibration for the various probes in Orion

In general, it's good to rinse everything with DI water before and after use.

To use, just turn on, wait ~5 minutes for things to warm up - then stick the probes in water, moving slightly until readings stabilize (they'll say 'Ready').

### I. DO probe

**Storage**: The DO probe should be stored in the white plastic sleeve with the sponge and cap on the end. 

**Calibration**: 
1. Take the plastic cap off the end of the probe and take the sponge out (might need forceps or something to pull it out)
2. Soak the sponge in DI water, then squeeze the sponge to wring the water out. The sponge should be damp/moist, but not dripping wet
3. Return the sponge to the plastic sleeve and put the cap back on
4. On the Orion page, click the button for 'Cal' > Dissolved Oxygen/RDO > Air > Start
5. Wait until the reading stabilizes and click accept - should be calibrated to 100% saturation
6. Remove the white plastic sleeve and replace with the metal sleeve with the holes - now ready for measurements!

### II. pH probe

**Storage**: The pH probe should *always* be kept submerged in storage solution when not in use. The membrane should always be wet and not dry out. 

*To remove the probe **unscrew the cap, DO NOT PULL OUT** - this can damage the membrane*

**Calibration**:
1. Unscrew the cap of the storage bottle and remove the probe. Rinse with DI water. 
2. Have small falcon tubes with aliquots of 4, 7, and 10 pH buffer ready to go (this should already be set up in larger falcon tubes and just need to be poured into the smaller tube - but there are more stock packets of buffer on the field shelf)
3. On the Orion page, click the button for 'Cal' > pH 
4. Place the probe into 4 pH buffer - make sure the membrane is submerged in the buffer
5. Hit Start - wait for the ready to stabilize and click 'accept'
6. Rinse with DI water - then repeat steps 4 & 5 for 7 and 10 pH buffers
7. After all 3 buffers are done - hit Done - a slope will be displayed, it should be very close to 100%
	1. if it's below 97, I would redo the calibration - the 10 pH buffer tends to go bad quickly, so you may want to try replacing the stock buffer with a new packet

After measurements are done, replace the probe in the storage bottle by *screwing the cap back on - DO NOT PUSH INTO THE BOTTLE*, again it can damage the membrane

### III. Salinity/Conductivity

**Storage**: There's no specific instructions for storage of this probe, it is used and kept as is

**Calibration**: This probe doesn't need to be calibrated every time you want to use it. I would only calibrate it if you are questioning the measurement. You can always double check the measurement with the refractometer.

But if you want/need to calibrate it...
1. Aliquot calibration solutions
	1. There are a number of calibration solutions, you can do multiple or single point calibrations. The solutions have different units of calibration - I'm not sure how this affects the calibration. 
2. Click Cal > Salinity/Conductivity 
3. Place probe in calibration solution and click Start
4. Wait for stabilized measurement - make sure the reading is similar to the calibration solution you chose - then click Accept


### Troubleshooting

If the temperature or readings say 9999 ...
- wait a few minutes for Orion to 'warm up' - sometimes this happens when you turn it on and try to calibrate right away
- check connections of the probe to Orion
- can pull off the end cap of the RDO probe - check that there's not water there and the gold prongs are touching the probe and bent
- factory reset (setting > diagnostics > factory reset > password is 111111)

If you try to calibrate a probe and the option you want isn't there or you get an error message...
- might be on the wrong screen that's not displaying all of the channels/probes
	- Orion ignores the other channels/probes and won't let you calibrate anything but what the screen is showing
	- **to fix**: keep clicking the 'channel' button (typically top right button) until you get back to the intended display
- might be in the wrong mode/units for that probe
	- for example: salinity is in mS/m instead of psu, DO is in %sat instead of mg/L
	- **to fix**: click 'setup' (the up arrow of the quad buttons in the center), navigate to the probe/channel with the issues, select 'Mode settings', find the row for 'measurement units' and click 'select', and change to desired units - now calibration should return to normal


if none of those work, always a good idea to try turning on/off, checking the battery, unplugging and re-plugging the probe