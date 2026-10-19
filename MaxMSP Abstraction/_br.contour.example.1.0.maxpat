{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 104.0, 1612.0, 680.0 ],
        "description": "_br.contour.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 660.0, 15.0, 716.0, 47.0 ],
                    "text": "_br.contour.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 300.0, 20.0 ],
                    "text": "br.contour"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 45.0, 600.0, 60.0 ],
                    "text": "Two triggered envelopes, stereo: one on the level, one on a lowpass cutoff. Each trigger starts both. Each has a bipolar Amount, so they can work together (both + = a lowpass gate: brighter as it gets louder) or against each other (the level dips while the filter opens). A new trigger restarts from wherever the envelope is, so nothing jumps or clicks."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 120.0, 522.0, 87.0 ],
                    "text": "Two files, same DSP inside:\nbr.contour.1.0 = core, no UI (in: L, R, Trigger, Amp Amount, Rise, Fall, Curve, Filter Amount, Rise, Fall, Curve, Cutoff, Resonance, Mix Mode, On/Off; out: L, R, Amp Envelope, Filter Envelope)\nbr.contour.ui.1.0 = the same with dials, as a bpatcher; adds the State outlet. Same inlets, so they swap without rewiring."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 222.0, 506.0, 60.0 ],
                    "text": "A: the UI. Pick a source, turn on A's metro, raise A's slider. It starts at the default: Amp Amount -1, full level that dips on each trigger. Then try the recipes: each message sets the ten dials through A's inlets (Amount, Rise, Fall, Curve for amp, then filter, then Cutoff, Resonance)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 296.0, 602.0, 47.0 ],
                    "text": "Amp Amount: +1 = silent at rest, swells on each trigger; -1 = full at rest, dips; 0 = level untouched. Filter Amount (octaves): how far the cutoff moves from Cutoff at the top of the envelope; + opens, - closes. Cutoff 20000 = open."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 356.0, 600.0, 33.0 ],
                    "text": "B: the core alone as a lowpass gate (Amp Amount +1, Cutoff 120 Hz) on its own metro, with Filter Amount swept 0 to 6 octaves by a slow sine: every control inlet takes a signal too."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 402.0, 600.0, 47.0 ],
                    "text": "Off fades over 20 ms, then pauses. Mix Mode says what you hear when Off: Thru = the dry signal, Aux = silence (for an aux send). The Amp and Filter Envelope outlets carry the raw 0-1 envelopes (scopes under A), for modulating other things."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 462.0, 584.0, 47.0 ],
                    "text": "State outlet: A's last outlet sends ampamount, amprise ... resonance, mode and on as named messages when a control changes. Open p \"State outlet\" to see them. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n8",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 542.0, 463.0, 33.0 ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly (A or B)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 588.0, 300.0, 20.0 ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menu",
                    "items": [ "Off", ",", "drum loop", ",", "Anton", ",", "drone (synth)", ",", "mic (adc~ 1)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 660.0, 75.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menuc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 815.0, 75.0, 200.0, 20.0 ],
                    "text": "source: Off until you pick one"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 900.0, 480.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 drone (synth), 4 mic (adc~ 1)",
                                    "id": "s-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "int", "int", "int" ],
                                    "patching_rect": [ 15.0, 50.0, 85.0, 22.0 ],
                                    "text": "t i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 400.0, 15.0, 60.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 400.0, 45.0, 40.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 80.0, 260.0, 20.0 ],
                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 110.0, 180.0, 22.0 ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 110.0, 160.0, 22.0 ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 210.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 400.0, 80.0, 440.0, 20.0 ],
                                    "text": "drone: a held chord, so the dips, swells and filter sweeps are easy to hear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 140.0, 60.0, 22.0 ],
                                    "text": "saw~ 110"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 470.0, 140.0, 72.0, 22.0 ],
                                    "text": "saw~ 110.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 555.0, 140.0, 72.0, 22.0 ],
                                    "text": "saw~ 164.8"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sum",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 175.0, 52.0, 22.0 ],
                                    "text": "*~ 0.25"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sumc",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 460.0, 175.0, 400.0, 20.0 ],
                                    "text": "three saws sum into one inlet; 0.25 keeps the chord near 0.75 peak"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 700.0, 140.0, 50.0, 22.0 ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 210.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 210.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 210.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 210.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 400.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 400.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 400.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 400.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 700.0, 230.0, 40.0, 22.0 ],
                                    "text": "== 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 700.0, 260.0, 45.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 700.0, 290.0, 40.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 700.0, 330.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 380.0, 50.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 210.0, 380.0, 50.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note3",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 300.0, 380.0, 560.0, 33.0 ],
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes. All four are mono, sent to both sides"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal)",
                                    "id": "s-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 430.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Right Source (Signal)",
                                    "id": "s-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 210.0, 430.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s-g4", 0 ],
                                    "source": [ "s-adc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f1", 0 ],
                                    "source": [ "s-eq1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f2", 0 ],
                                    "source": [ "s-eq2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f3", 0 ],
                                    "source": [ "s-eq3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f4", 0 ],
                                    "source": [ "s-eq4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l1", 0 ],
                                    "source": [ "s-f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l2", 0 ],
                                    "source": [ "s-f2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l3", 0 ],
                                    "source": [ "s-f3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l4", 0 ],
                                    "source": [ "s-f4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-t", 0 ],
                                    "source": [ "s-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 1 ],
                                    "source": [ "s-l1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 1 ],
                                    "source": [ "s-l2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 1 ],
                                    "source": [ "s-l3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4", 1 ],
                                    "source": [ "s-l4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-lbt", 0 ],
                                    "source": [ "s-lb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m1", 0 ],
                                    "source": [ "s-lbt", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m2", 0 ],
                                    "source": [ "s-lbt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p1", 0 ],
                                    "source": [ "s-m1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p2", 0 ],
                                    "source": [ "s-m2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o1", 0 ],
                                    "source": [ "s-outL", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o2", 0 ],
                                    "source": [ "s-outR", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 0 ],
                                    "source": [ "s-p1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 0 ],
                                    "source": [ "s-p2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sum", 0 ],
                                    "source": [ "s-saw3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 0 ],
                                    "source": [ "s-sum", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq1", 0 ],
                                    "source": [ "s-t", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq2", 0 ],
                                    "source": [ "s-t", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq3", 0 ],
                                    "source": [ "s-t", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq4", 0 ],
                                    "source": [ "s-t", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 660.0, 105.0, 120.0, 22.0 ],
                    "text": "p source"
                }
            },
            {
                "box": {
                    "id": "obj-atog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 660.0, 145.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-atogc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 688.0, 147.0, 80.0, 20.0 ],
                    "text": "A metro, ms"
                }
            },
            {
                "box": {
                    "id": "obj-ams",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 770.0, 147.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-amslm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 825.0, 147.0, 85.0, 22.0 ],
                    "text": "loadmess 500"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ametro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 660.0, 180.0, 70.0, 22.0 ],
                    "text": "metro 500"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 75.0, 200.0, 20.0 ],
                    "text": "recipes for A (click one)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl0",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 100.0, 130.0, 20.0 ],
                    "text": "dip (the default)"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1069.0, 72.0, 210.0, 22.0 ],
                    "text": "-1 5 250 0 0 5 250 0 20000 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 125.0, 130.0, 20.0 ],
                    "text": "swell"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1069.0, 97.0, 210.0, 22.0 ],
                    "text": "1 150 400 0.5 0 5 250 0 20000 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 150.0, 130.0, 20.0 ],
                    "text": "lowpass gate"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1069.0, 122.0, 210.0, 22.0 ],
                    "text": "1 3 350 0.6 5 3 300 0.6 150 0.3"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 175.0, 130.0, 20.0 ],
                    "text": "against each other"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1069.0, 147.0, 210.0, 22.0 ],
                    "text": "-1 5 300 0 6 5 300 0 200 0.4"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-recl4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 940.0, 200.0, 130.0, 20.0 ],
                    "text": "filter only, closing"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-rec4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1075.0, 174.0, 210.0, 22.0 ],
                    "text": "0 5 250 0 -5 3 400 0.5 8000 0.5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpack",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "float", "float", "float", "float", "float", "float", "float", "float", "float" ],
                    "patching_rect": [ 722.0, 240.0, 250.0, 22.0 ],
                    "text": "unpack 0. 0. 0. 0. 0. 0. 0. 0. 0. 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-unpackc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 978.0, 240.0, 130.0, 20.0 ],
                    "text": "-> A inlets 4 to 13"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 990.0, 290.0, 150.0, 20.0 ],
                    "text": "A: br.contour.ui.1.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.contour.ui.1.0.maxpat",
                    "numinlets": 15,
                    "numoutlets": 5,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "signal", "signal", "" ],
                    "patching_rect": [ 660.0, 290.0, 320.0, 134.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 660.0, 445.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 720.0, 445.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dactogc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 748.0, 447.0, 80.0, 20.0 ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 660.0, 600.0, 60.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-scamp",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 760.0, 480.0, 150.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-scampc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 542.0, 150.0, 20.0 ],
                    "text": "Amp Envelope, 0 to 1"
                }
            },
            {
                "box": {
                    "id": "obj-scflt",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 760.0, 570.0, 150.0, 60.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-scfltc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 760.0, 632.0, 150.0, 20.0 ],
                    "text": "Filter Envelope, 0 to 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 100.0, 100.0, 840.0, 260.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A (UI)",
                                    "id": "st-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-c",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 760.0, 47.0 ],
                                    "text": "br.contour.ui.1.0 sends its state out of its LAST outlet as named messages, the moment a control changes: ampamount, amprise, ampfall, ampcurve, filtamount, filtrise, filtfall, filtcurve, cutoff, resonance, mode, on. Pick them out by name with route. The plain object has no State outlet: whatever drives it already knows the values."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-a",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 100.0, 58.0, 20.0 ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-route",
                                    "maxclass": "newobj",
                                    "numinlets": 13,
                                    "numoutlets": 13,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 30.0, 135.0, 760.0, 22.0 ],
                                    "text": "route ampamount amprise ampfall ampcurve filtamount filtrise filtfall filtcurve cutoff resonance mode on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n0",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l0",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 195.0, 64.0, 20.0 ],
                                    "text": "ampamount"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n1",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 94.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 94.0, 195.0, 64.0, 20.0 ],
                                    "text": "amprise"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 158.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 158.0, 195.0, 64.0, 20.0 ],
                                    "text": "ampfall"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 222.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 222.0, 195.0, 64.0, 20.0 ],
                                    "text": "ampcurve"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 286.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 286.0, 195.0, 64.0, 20.0 ],
                                    "text": "filtamount"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 350.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 350.0, 195.0, 64.0, 20.0 ],
                                    "text": "filtrise"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n6",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 414.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 414.0, 195.0, 64.0, 20.0 ],
                                    "text": "filtfall"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n7",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 478.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 478.0, 195.0, 64.0, 20.0 ],
                                    "text": "filtcurve"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n8",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 542.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 542.0, 195.0, 64.0, 20.0 ],
                                    "text": "cutoff"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "st-n9",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 606.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l9",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 606.0, 195.0, 64.0, 20.0 ],
                                    "text": "resonance"
                                }
                            },
                            {
                                "box": {
                                    "id": "st-n10",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 670.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 670.0, 195.0, 64.0, 20.0 ],
                                    "text": "mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "st-n11",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 734.0, 170.0, 56.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "st-l11",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 734.0, 195.0, 64.0, 20.0 ],
                                    "text": "on"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "st-route", 0 ],
                                    "source": [ "st-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n0", 0 ],
                                    "source": [ "st-route", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n1", 0 ],
                                    "source": [ "st-route", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n10", 0 ],
                                    "source": [ "st-route", 10 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n11", 0 ],
                                    "source": [ "st-route", 11 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n2", 0 ],
                                    "source": [ "st-route", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n3", 0 ],
                                    "source": [ "st-route", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n4", 0 ],
                                    "source": [ "st-route", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n5", 0 ],
                                    "source": [ "st-route", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n6", 0 ],
                                    "source": [ "st-route", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n7", 0 ],
                                    "source": [ "st-route", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n8", 0 ],
                                    "source": [ "st-route", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "st-n9", 0 ],
                                    "source": [ "st-route", 9 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 930.0, 445.0, 110.0, 22.0 ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1261.0, 200.0, 420.0, 20.0 ],
                    "text": "B: the core, a lowpass gate with Filter Amount swept by a sine"
                }
            },
            {
                "box": {
                    "id": "obj-btog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1261.0, 249.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-btogc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1175.0, 149.0, 80.0, 20.0 ],
                    "text": "B metro, ms"
                }
            },
            {
                "box": {
                    "id": "obj-bms",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1303.0, 264.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bmslm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1303.0, 231.0, 85.0, 22.0 ],
                    "text": "loadmess 375"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bmetro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1261.0, 296.0, 70.0, 22.0 ],
                    "text": "metro 375"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hidden": 1,
                    "id": "obj-blb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1421.0, 55.0, 60.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hidden": 1,
                    "id": "obj-bdl",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1421.0, 80.0, 60.0, 22.0 ],
                    "text": "deferlow"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "hidden": 1,
                    "id": "obj-bt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 6,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 1421.0, 105.0, 120.0, 22.0 ],
                    "text": "t b b b b b b"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-btc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1536.0, 175.0, 330.0, 20.0 ],
                    "text": "values go in after load (deferlow), once gen~ is ready"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv0",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1347.0, 300.0, 36.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv1",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1411.0, 325.0, 36.0, 22.0 ],
                    "text": "400"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1441.0, 300.0, 36.0, 22.0 ],
                    "text": "0.5"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1531.0, 325.0, 36.0, 22.0 ],
                    "text": "350"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1591.0, 300.0, 36.0, 22.0 ],
                    "text": "120"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bv5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1621.0, 325.0, 36.0, 22.0 ],
                    "text": "0.4"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bvc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1297.0, 421.0, 494.0, 20.0 ],
                    "text": "1 / 400 / 0.5 -> Amp Amount, Fall, Curve; 350 -> Filter Fall; 120 -> Cutoff; 0.4 -> Resonance"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1471.5, 241.0, 68.0, 22.0 ],
                    "text": "cycle~ 0.1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfom",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1479.0, 283.0, 40.0, 22.0 ],
                    "text": "*~ 3."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfoa",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1471.5, 315.0, 40.0, 22.0 ],
                    "text": "+~ 3."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blfoc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1566.0, 260.0, 280.0, 20.0 ],
                    "text": "Filter Amount 0..6 oct, one sweep every 10 s"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 15,
                    "numoutlets": 4,
                    "outlettype": [ "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 1261.0, 355.0, 440.0, 22.0 ],
                    "text": "br.contour.1.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1595.0, 305.0, 40.0, 20.0 ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1150.0, 445.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-gaina", 1 ],
                    "source": [ "obj-a", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gaina", 0 ],
                    "source": [ "obj-a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scamp", 0 ],
                    "source": [ "obj-a", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-scflt", 0 ],
                    "source": [ "obj-a", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-state", 0 ],
                    "source": [ "obj-a", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 2 ],
                    "source": [ "obj-ametro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ametro", 1 ],
                    "source": [ "obj-ams", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ams", 0 ],
                    "source": [ "obj-amslm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-ametro", 0 ],
                    "source": [ "obj-atog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 1 ],
                    "source": [ "obj-b", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 0 ],
                    "source": [ "obj-b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bt", 0 ],
                    "source": [ "obj-bdl", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bdl", 0 ],
                    "source": [ "obj-blb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-blfom", 0 ],
                    "source": [ "obj-blfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 7 ],
                    "source": [ "obj-blfoa", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-blfoa", 0 ],
                    "source": [ "obj-blfom", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 2 ],
                    "source": [ "obj-bmetro", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bmetro", 1 ],
                    "source": [ "obj-bms", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bms", 0 ],
                    "source": [ "obj-bmslm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv0", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv1", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv2", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv3", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv4", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bv5", 0 ],
                    "hidden": 1,
                    "source": [ "obj-bt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-bmetro", 0 ],
                    "source": [ "obj-btog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 3 ],
                    "source": [ "obj-bv0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 5 ],
                    "source": [ "obj-bv1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 6 ],
                    "source": [ "obj-bv2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 9 ],
                    "source": [ "obj-bv3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 11 ],
                    "source": [ "obj-bv4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 12 ],
                    "source": [ "obj-bv5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-dactog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gaina", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gaina", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gainb", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gainb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-source", 0 ],
                    "source": [ "obj-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec0", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-unpack", 0 ],
                    "hidden": 1,
                    "source": [ "obj-rec4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 1 ],
                    "order": 1,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 0 ],
                    "order": 1,
                    "source": [ "obj-source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 1 ],
                    "order": 0,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 0 ],
                    "order": 0,
                    "source": [ "obj-source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 12 ],
                    "source": [ "obj-unpack", 9 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 11 ],
                    "source": [ "obj-unpack", 8 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 10 ],
                    "source": [ "obj-unpack", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 9 ],
                    "source": [ "obj-unpack", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 8 ],
                    "source": [ "obj-unpack", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 7 ],
                    "source": [ "obj-unpack", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 6 ],
                    "source": [ "obj-unpack", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 5 ],
                    "source": [ "obj-unpack", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 4 ],
                    "source": [ "obj-unpack", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 3 ],
                    "source": [ "obj-unpack", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-a::ctl-ampamount": [ "Amp Amount", "Amount", 0 ],
            "obj-a::ctl-ampcurve": [ "Amp Curve", "Curve", 0 ],
            "obj-a::ctl-ampfall": [ "Amp Fall", "Fall", 0 ],
            "obj-a::ctl-amprise": [ "Amp Rise", "Rise", 0 ],
            "obj-a::ctl-cutoff": [ "Cutoff", "Cutoff", 0 ],
            "obj-a::ctl-filtamount": [ "Filter Amount", "Octaves", 0 ],
            "obj-a::ctl-filtcurve": [ "Filter Curve", "Curve", 0 ],
            "obj-a::ctl-filtfall": [ "Filter Fall", "Fall", 0 ],
            "obj-a::ctl-filtrise": [ "Filter Rise", "Rise", 0 ],
            "obj-a::ctl-mode": [ "Mix Mode", "Mix Mode", 0 ],
            "obj-a::ctl-on": [ "On/Off", "On/Off", 0 ],
            "obj-a::ctl-resonance": [ "Resonance", "Reso", 0 ],
            "obj-a::obj-trig": [ "Trigger", "Trigger", 0 ],
            "obj-gaina": [ "A out", "A", 0 ],
            "obj-gainb": [ "B out", "B", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}