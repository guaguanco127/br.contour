# Max/MSP Patches, Abstractions, Externals, RNBO and VSTs

## br.contour.1.0



By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)
  
Repository for br.contour.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.contour](https://github.com/guaguanco127/br.contour)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[State outlet](#State)  
[Max/MSP Abstractions](https://github.com/guaguanco127/br.contour/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP  
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.contour/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external or VST/AU plugin, or to reuse the code in your own RNBO patches (needs RNBO)  

You can use them as abstractions within Max/MSP. With RNBO you can also build your own Max external or plugin from the included RNBO patch.

## <a name="About"></a>About

Two triggered envelopes for Max/MSP, stereo, built in gen~: one on the level, one on a lowpass filter's cutoff. Each trigger starts both.

It isn't just a lowpass gate. The amp and the filter each have their own bipolar Amount, so they can work together or against each other:

| Amp Amount | Filter Amount | Sound |
|---|---|---|
| + (swells) | + (opens) | Lowpass gate: silent at rest, brighter as it gets louder (a pluck on a drone) |
| - (dips) | 0 | Ducking: full level, dips on every trigger (the default) |
| - (dips) | + (opens) | Against each other: the level dips while the filter opens |
| 0 | + or - | Envelope filter only: the level is untouched |

**Click-free:** A new trigger restarts each envelope from wherever it is, never from 0, and changing a time or curve mid-flight never jumps. The level never moves faster than full scale in 2 ms, so even the steepest curve can't click. Every control is smoothed.

**Curved envelopes:** Rise and Fall for each envelope (3 ms or 1 ms up to 5 / 10 s), each with a curve from logarithmic through straight to exponential.

**Filter in octaves:** Filter Amount moves the cutoff up to 8 octaves either way from Cutoff, so a sweep sounds even across the range. A resonant 12 dB/oct state-variable lowpass that stays stable at any setting.

**On/Off and Mix Mode:** Off fades over 20 ms, then pauses and resets the envelopes and filter. Mix Mode sets what you hear when Off: Thru = the dry signal, Aux = silence, for an aux send.

**Envelope outlets:** the raw 0 - 1 amp and filter envelopes come out as signals, to modulate other things in time with the triggers.

**Two files:** br.contour.1.0 is the plain object: every control inlet takes signals as well as numbers, so an LFO can sweep any of them. br.contour.ui.1.0 adds the panel of dials for a [bpatcher], plus a State outlet.

**Pairs with:** [br.stutter.c](https://github.com/guaguanco127/br.stutter.c) (each new grain as the trigger), [br.metro.random](https://github.com/guaguanco127/br.metro.random) (not-quite-random triggers) and [br.function](https://github.com/guaguanco127/br.function) (its end-of-cycle pulse, through [edge~]).

The example patch (_br.contour.example.1.0.maxpat) plays a drum loop, a voice, a drone or your mic through two copies: A, the version with dials on a metro, with five recipe buttons (dip, swell, lowpass gate, against each other, filter only), and B, the plain object as a lowpass gate whose Filter Amount is swept by a slow sine.

## <a name="State"></a>State outlet

The last outlet of the .ui file (State) sends the current settings as named messages the moment they change, for example `ampamount -1.`, `cutoff 800.`, `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route ampamount amprise ampfall ampcurve filtamount filtrise filtfall filtcurve cutoff resonance mode on]. Repeats are filtered out.

## <a name="Credits"></a>Credits

The envelope engine comes from my [br.function](https://github.com/guaguanco127/br.function) (inspired by the Make Noise Maths function generator). The lowpass-gate idea, where one control moves the level and the brightness together, goes back to Don Buchla's 292. The name borrows Moog's word for an envelope amount that can go either way.
