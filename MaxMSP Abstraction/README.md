# Max/MSP Abstractions:  
## br.contour.1.0



By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)
  
Repository for br.contour.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.contour](https://github.com/guaguanco127/br.contour)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  



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

### Controls

**Trigger:** starts both envelopes. On the .ui file, the button on the panel does the same. A bang lands at the start of the next audio block.

**Amp Amount:** -1 to 1. How the envelope moves the level: gain = 1 - max(Amount, 0) + Amount x envelope.
- +1: silent at rest, swells to full on each trigger (fade in, then out).
- -1: full at rest, dips to silence on each trigger (ducking). The default, so it passes sound as soon as you patch it in.
- 0: the level is untouched; use it when only the filter should move. In between, it does a bit of each.

**Amp Rise / Amp Fall:** 3 ms to 5 s up, 3 ms to 10 s down. The time to cross the whole 0 - 1 range; a retrigger from partway takes the matching part. The dials are curved, so most of their travel covers the shorter times. Defaults: 5 ms and 250 ms.

**Amp Curve / Filter Curve:** -1 to 1, one curve for both halves of that envelope. 0 is a straight line; +1 (exponential) rises slowly and falls with a long tail; -1 (logarithmic) rises fast and holds near the top before it drops.

**Filter Amount:** -8 to 8 octaves. How far the cutoff moves from Cutoff at the top of the envelope: + opens (brighter on each trigger), - closes (darker), 0 = a fixed cutoff. The cutoff is held between 20 Hz and just under half the sample rate. Default 0.

**Filter Rise / Filter Fall:** 1 ms to 5 s up, 1 ms to 10 s down. Defaults: 5 ms and 250 ms.

**Cutoff:** 20 to 20000 Hz, the lowpass cutoff at rest. 20000 = open. For a lowpass gate, set it low (100 - 300 Hz) with Filter Amount around +5.

**Resonance:** 0 to 1 = Q 0.707 to 5. A peak at the cutoff, swept by the filter envelope. Capped at Q 5 so a sweep stays musical.

**Mix Mode:** what you hear when Off. Thru (0) = the dry signal passes; Aux (1) = silence, for use on an aux send. Default Thru.

**On/Off:** Off fades over 20 ms, then pauses: the envelopes and filter stop and reset, so turning On starts clean. Default on.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.contour.1.0.maxpat and br.contour.ui.1.0.maxpat into the same folder as the Max patch you are using (the .ui file uses the plain object).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.contour.ui.1.0.maxpat. Size the bpatcher to 320 x 134 to show all of the controls.

4. For the plain object, create an object with its name (br.contour.1.0, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order on both files. On the .ui file, sending a value to an inlet moves its on-screen control too, so the display always matches the sound. On the plain object, inlets 4 to 15 also take signals (Float below = Signal too). Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Trigger | Bang | bang, any nonzero number (e.g. a note-on velocity) or any word; 0 is ignored | |
| 4 | Amp Amount | Float | -1 - 1 | -1 |
| 5 | Amp Rise | Float | 3 - 5000 ms | 5 |
| 6 | Amp Fall | Float | 3 - 10000 ms | 250 |
| 7 | Amp Curve | Float | -1 - 1 | 0 |
| 8 | Filter Amount | Float | -8 - 8 octaves | 0 |
| 9 | Filter Rise | Float | 1 - 5000 ms | 5 |
| 10 | Filter Fall | Float | 1 - 10000 ms | 250 |
| 11 | Filter Curve | Float | -1 - 1 | 0 |
| 12 | Cutoff | Float | 20 - 20000 Hz | 20000 (open) |
| 13 | Resonance | Float | 0 - 1 (Q 0.707 - 5) | 0 |
| 14 | Mix Mode | Int | 0 Thru / 1 Aux | 0 |
| 15 | On/Off | Int | 0 / 1 | 1 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | Amp Envelope: 0 to 1, the raw envelope (before Amp Amount) | Signal |
| 4 | Filter Envelope: 0 to 1, the raw envelope (before Filter Amount) | Signal |
| 5 | State (.ui only): the settings as named messages, see [State outlet](#State) | Message |

**Ideas:**
- Lowpass gate on a drone or pad: Amp Amount +1, Filter Amount +5, Cutoff 150, a short Rise and a curved Fall.
- Ducking on a beat: the default (Amp Amount -1) with a kick or a metro on Trigger.
- Swells: Amp Amount +1 with a long Rise.
- Glitch accents after a stutter: each new grain as the trigger, Filter Amount + to brighten every repeat.
- Modulation: the Amp or Filter Envelope outlet into another effect's control, through [br.scale](https://github.com/guaguanco127/br.scale).

## <a name="State"></a>State outlet

The last outlet of the .ui file (State) sends the current settings as named messages the moment they change, for example `ampamount -1.`, `cutoff 800.`, `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route ampamount amprise ampfall ampcurve filtamount filtrise filtfall filtcurve cutoff resonance mode on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out. The Trigger button is not reported.

| Message | Type | Range |
|---|---|---|
| ampamount | Float | -1 to 1 |
| amprise | Float | 3 to 5000 ms |
| ampfall | Float | 3 to 10000 ms |
| ampcurve | Float | -1 to 1 |
| filtamount | Float | -8 to 8 octaves |
| filtrise | Float | 1 to 5000 ms |
| filtfall | Float | 1 to 10000 ms |
| filtcurve | Float | -1 to 1 |
| cutoff | Float | 20 to 20000 Hz |
| resonance | Float | 0 to 1 |
| mode | Int | 0 Thru / 1 Aux |
| on | Int | 0 / 1 |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain object has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.contour.example.1.0.maxpat (keep it in the same folder as both abstraction files). Pick a source in the menu: drum loop, Anton (both ship with Max), a drone, or your mic. It starts Off. Both outputs start muted at -70 dB: turn on the audio, then raise one slider slowly.

- **A, the version with dials:** turn on its metro. It starts at the default, a dip on each trigger. Then click the recipes, which set the ten envelope and filter dials through A's inlets: dip, swell, lowpass gate, against each other, and filter only (closing). The scopes under A show the raw Amp and Filter Envelopes.
- **B, the plain object:** a lowpass gate (Amp Amount +1, Cutoff 120 Hz) on its own metro, with Filter Amount swept from 0 to 6 octaves by a slow sine: every control inlet takes a signal.
- **p "State outlet":** move A's controls and watch each value come out by name through [route].

## <a name="Credits"></a>Credits

The envelope engine comes from my [br.function](https://github.com/guaguanco127/br.function) (inspired by the Make Noise Maths function generator). The lowpass-gate idea, where one control moves the level and the brightness together, goes back to Don Buchla's 292. The name borrows Moog's word for an envelope amount that can go either way.
