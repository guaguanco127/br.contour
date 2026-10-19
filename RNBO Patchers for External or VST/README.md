# Max/MSP RNBO Patch for External or VST Creation: br.contour.rnbo.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)
  
Repository for br.contour.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.contour](https://github.com/guaguanco127/br.contour)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)  
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

Two triggered envelopes, stereo: one on the level, one on a lowpass filter's cutoff, each with a bipolar Amount, so they can work together (a lowpass gate) or against each other (the level dips while the filter opens). Every control is smoothed and a retrigger starts from wherever the envelope is, so nothing clicks. Works at any sample rate.

Inside [rnbo~], the twelve params (AmpAmount, AmpRise, AmpFall, AmpCurve, FilterAmount, FilterRise, FilterFall, FilterCurve, Cutoff, Resonance, MixMode, OnOff) are the plugin parameters, with the same ranges and dial curves as the Max version. Inlets 4 to 15 set the same params, so the external has the same fifteen inlets as the abstraction. The gen~ code inside is the same as br.contour.1.0.

**Trigger:** inlet 3: a bang, or any nonzero number, starts both envelopes. A plugin gets no bangs, so inside [rnbo~] a MIDI note-on triggers too: send the plugin a MIDI track (any note, any velocity above 0). In Max, use inlet 3.

**AmpAmount:** -1 to 1. +1 = silent at rest, swells on each trigger; -1 = full at rest, dips on each trigger; 0 = level untouched. Default -1.  
**AmpRise / AmpFall:** 3 to 5000 ms / 3 to 10000 ms, curved dials. Defaults 5 and 250.  
**AmpCurve / FilterCurve:** -1 to 1. 0 = straight, +1 = exponential (slow start, long tail), -1 = logarithmic. Default 0.  
**FilterAmount:** -8 to 8 octaves from Cutoff at the top of the envelope: + opens, - closes. Default 0.  
**FilterRise / FilterFall:** 1 to 5000 ms / 1 to 10000 ms, curved dials. Defaults 5 and 250.  
**Cutoff:** 20 to 20000 Hz, the lowpass cutoff at rest. Default 20000 (open).  
**Resonance:** 0 to 1 = Q 0.707 to 5. Default 0.  
**MixMode:** Thru / Aux, what you hear when Off: the dry signal, or silence. Default Thru.  
**OnOff:** Off fades over 20 ms, then pauses. Default on.  

Outlets: Left, Right, and the raw Amp and Filter Envelopes (0 to 1) as signals. There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="VST"></a>What is a VST or AU Audio Plugin?

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.contour.rnbo.1.0.maxpat. Drop a sample of your own onto the [playlist~], turn on the metro (or click the button) to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.contour.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.contour.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.contour.1.0~ in any patch. It has the same inlets as the abstraction, except that the twelve controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer**

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.contour.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The twelve parameters show up in your DAW for automation. Send the plugin MIDI notes to trigger it.

## <a name="Credits"></a>Credits

The envelope engine comes from my [br.function](https://github.com/guaguanco127/br.function) (inspired by the Make Noise Maths function generator). The lowpass-gate idea, where one control moves the level and the brightness together, goes back to Don Buchla's 292. The name borrows Moog's word for an envelope amount that can go either way.
