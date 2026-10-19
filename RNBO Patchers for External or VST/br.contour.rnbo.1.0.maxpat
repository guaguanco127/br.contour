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
        "rect": [
            134.0,
            159.0,
            820.0,
            620.0
        ],
        "description": "br.contour.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        15.0,
                        520.0,
                        60.0
                    ],
                    "text": "br.contour.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
                    "linecount": 4
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-intro",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        250.0,
                        80.0,
                        520.0,
                        33.0
                    ],
                    "text": "RNBO version of br.contour.1.0 (same gen~ code). Drop a sample onto the playlist~, turn on the metro (or click the button) and raise the slider slowly.",
                    "linecount": 2
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-drop",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        15.0,
                        150.0,
                        20.0
                    ],
                    "text": "Drop sample into here",
                    "linecount": 1
                }
            },
            {
                "box": {
                    "id": "obj-pl",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        40.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-btn",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        130.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-btnc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58.0,
                        132.0,
                        60.0,
                        20.0
                    ],
                    "text": "Trigger",
                    "linecount": 1
                }
            },
            {
                "box": {
                    "id": "obj-tog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        30.0,
                        170.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-togc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        58.0,
                        172.0,
                        70.0,
                        20.0
                    ],
                    "text": "metro 500",
                    "linecount": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        30.0,
                        205.0,
                        70.0,
                        22.0
                    ],
                    "text": "metro 500"
                }
            },
            {
                "box": {
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "AmpAmount",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        154.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "AmpRise",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        178.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "AmpFall",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        202.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "AmpCurve",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        226.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "FilterAmount",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        250.0,
                        250.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "FilterRise",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        130.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "FilterFall",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        154.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "FilterCurve",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        178.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "Cutoff",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        202.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "Resonance",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        226.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "MixMode",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "id": "obj-attr11",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "patching_rect": [
                        450.0,
                        250.0,
                        180.0,
                        22.0
                    ],
                    "outlettype": [
                        ""
                    ],
                    "attr": "OnOff",
                    "parameter_enable": 0
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-rnbo",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal)"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Trigger (Bang) a bang, any nonzero number (e.g. a note-on velocity) or any word starts both envelopes from wherever they are. 0 is ignored"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Amp Amount (Float) -1 - 1. +1 = silent at rest, swells on each trigger; -1 = full at rest, dips on each trigger; 0 = level untouched. Default -1"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Amp Rise (Float) 3 - 5000 ms. Time to rise to the top. Default 5"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Amp Fall (Float) 3 - 10000 ms. Time to fall back. Default 250"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Amp Curve (Float) -1 - 1. 0 = straight, +1 = exponential (slow start, long tail), -1 = logarithmic. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Filter Amount (Float) -8 - 8 octaves. How far the cutoff moves at the top of the envelope: + opens, - closes, 0 = fixed. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Filter Rise (Float) 1 - 5000 ms. Default 5"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "Filter Fall (Float) 1 - 10000 ms. Default 250"
                            },
                            {
                                "type": "event",
                                "index": 11,
                                "tag": "in11",
                                "comment": "Filter Curve (Float) -1 - 1. 0 = straight, +1 = exponential, -1 = logarithmic. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 12,
                                "tag": "in12",
                                "comment": "Cutoff (Float) 20 - 20000 Hz. The lowpass cutoff at rest; Filter Amount moves it from here. Default 20000 (open)"
                            },
                            {
                                "type": "event",
                                "index": 13,
                                "tag": "in13",
                                "comment": "Resonance (Float) 0 - 1 = Q 0.707 - 5. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 14,
                                "tag": "in14",
                                "comment": "Mix Mode (Int) 0 = Thru, 1 = Aux: what you hear when Off. Thru = the dry signal, Aux = silence. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 15,
                                "tag": "in15",
                                "comment": "On/Off (Int) 1 on, 0 off. Off fades over 20 ms, then the envelopes and filter pause. Default 1"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 15,
                    "numoutlets": 5,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": "Left Out (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": "Right Out (Signal)"
                            },
                            {
                                "type": "signal",
                                "index": 3,
                                "tag": "out3",
                                "comment": "Amp Envelope (Signal) 0 to 1, the raw envelope (before Amp Amount). For meters or modulating other things"
                            },
                            {
                                "type": "signal",
                                "index": 4,
                                "tag": "out4",
                                "comment": "Filter Envelope (Signal) 0 to 1, the raw envelope (before Filter Amount)"
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            60.0,
                            100.0,
                            1500.0,
                            520.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "r-in1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        150.0,
                                        38.0
                                    ],
                                    "text": "in~ 1 @comment \"Left In (Signal)\"",
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_r-in1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        190.0,
                                        20.0,
                                        150.0,
                                        38.0
                                    ],
                                    "text": "in~ 2 @comment \"Right In (Signal)\"",
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_r-in2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        350.0,
                                        20.0,
                                        190.0,
                                        80.0
                                    ],
                                    "text": "in 3 @comment \"Trigger (Bang) a bang; any nonzero number (e.g. a note-on velocity) or any word starts both envelopes from wherever they are. 0 is ignored\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_r-in3",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "r-click",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        350.0,
                                        200.0,
                                        50.0,
                                        23.0
                                    ],
                                    "text": "click~",
                                    "rnbo_classname": "click~",
                                    "rnbo_extra_attributes": {},
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "click~_r-click"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-notein",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "",
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        110.0,
                                        50.0,
                                        23.0
                                    ],
                                    "text": "notein",
                                    "rnbo_classname": "notein",
                                    "rnbo_extra_attributes": {
                                        "channel": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "notein_r-notein"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-strip",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        140.0,
                                        62.0,
                                        23.0
                                    ],
                                    "text": "stripnote",
                                    "rnbo_classname": "stripnote",
                                    "rnbo_extra_attributes": {},
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "stripnote_r-strip"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-midic",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        500.0,
                                        110.0,
                                        170.0,
                                        47.0
                                    ],
                                    "linecount": 3,
                                    "text": "plugin only: a MIDI note-on triggers too (its velocity, any nonzero number)"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        690.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 4 @comment \"Amp Amount (Float) -1 - 1. +1 = silent at rest; swells on each trigger; -1 = full at rest; dips on each trigger; 0 = level untouched. Default -1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_r-in4",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-AmpAmount",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        690.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param AmpAmount -1 @min -1.0 @max 1.0 @order 1",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "AmpAmount",
                                    "linecount": 2,
                                    "varname": "AmpAmount"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        890.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 5 @comment \"Amp Rise (Float) 3 - 5000 ms. Time to rise to the top. Default 5\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_r-in5",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "p-AmpRise",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        890.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param AmpRise 5 @min 3.0 @max 5000.0 @exponent 4.0 @order 2",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "AmpRise",
                                    "linecount": 3,
                                    "varname": "AmpRise"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1090.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 6 @comment \"Amp Fall (Float) 3 - 10000 ms. Time to fall back. Default 250\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in_r-in6",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "p-AmpFall",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1090.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param AmpFall 250 @min 3.0 @max 10000.0 @exponent 4.0 @order 3",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "AmpFall",
                                    "linecount": 3,
                                    "varname": "AmpFall"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1290.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 7 @comment \"Amp Curve (Float) -1 - 1. 0 = straight; +1 = exponential (slow start; long tail); -1 = logarithmic. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in_r-in7",
                                    "linecount": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "p-AmpCurve",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1290.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param AmpCurve 0 @min -1.0 @max 1.0 @order 4",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "AmpCurve",
                                    "linecount": 2,
                                    "varname": "AmpCurve"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1490.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 8 @comment \"Filter Amount (Float) -8 - 8 octaves. How far the cutoff moves at the top of the envelope: + opens; - closes; 0 = fixed. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in_r-in8",
                                    "linecount": 6
                                }
                            },
                            {
                                "box": {
                                    "id": "p-FilterAmount",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1490.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param FilterAmount 0 @min -8.0 @max 8.0 @order 5",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "FilterAmount",
                                    "linecount": 2,
                                    "varname": "FilterAmount"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1690.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 9 @comment \"Filter Rise (Float) 1 - 5000 ms. Default 5\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in_r-in9",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "p-FilterRise",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1690.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param FilterRise 5 @min 1.0 @max 5000.0 @exponent 4.0 @order 6",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "FilterRise",
                                    "linecount": 3,
                                    "varname": "FilterRise"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in10",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1890.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 10 @comment \"Filter Fall (Float) 1 - 10000 ms. Default 250\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "in_r-in10",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "p-FilterFall",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1890.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param FilterFall 250 @min 1.0 @max 10000.0 @exponent 4.0 @order 7",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "FilterFall",
                                    "linecount": 3,
                                    "varname": "FilterFall"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in11",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2090.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 11 @comment \"Filter Curve (Float) -1 - 1. 0 = straight; +1 = exponential; -1 = logarithmic. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "in_r-in11",
                                    "linecount": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "p-FilterCurve",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2090.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param FilterCurve 0 @min -1.0 @max 1.0 @order 8",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "FilterCurve",
                                    "linecount": 2,
                                    "varname": "FilterCurve"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2290.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 12 @comment \"Cutoff (Float) 20 - 20000 Hz. The lowpass cutoff at rest; Filter Amount moves it from here. Default 20000 (open)\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "in_r-in12",
                                    "linecount": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Cutoff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2290.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Cutoff 20000 @min 20.0 @max 20000.0 @exponent 4.0 @order 9",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 4.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "Cutoff",
                                    "linecount": 3,
                                    "varname": "Cutoff"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2490.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 13 @comment \"Resonance (Float) 0 - 1 = Q 0.707 - 5. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "in_r-in13",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "p-Resonance",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2490.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param Resonance 0 @min 0.0 @max 1.0 @order 10",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "Resonance",
                                    "linecount": 2,
                                    "varname": "Resonance"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2690.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 14 @comment \"Mix Mode (Int) 0 = Thru; 1 = Aux: what you hear when Off. Thru = the dry signal; Aux = silence. Default 0\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "in_r-in14",
                                    "linecount": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "p-MixMode",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2690.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param MixMode 0 @enum Thru Aux @order 11",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "Thru Aux",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 11,
                                    "rnbo_uniqueid": "MixMode",
                                    "linecount": 2,
                                    "varname": "MixMode"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-in15",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2890.0,
                                        20.0,
                                        190.0,
                                        94.0
                                    ],
                                    "text": "in 15 @comment \"On/Off (Int) 1 on; 0 off. Off fades over 20 ms; then the envelopes and filter pause. Default 1\"",
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 13,
                                    "rnbo_uniqueid": "in_r-in15",
                                    "linecount": 5
                                }
                            },
                            {
                                "box": {
                                    "id": "p-OnOff",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2890.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "text": "param OnOff 1 @enum off on @order 12",
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "off on",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 12,
                                    "rnbo_uniqueid": "OnOff",
                                    "linecount": 2,
                                    "varname": "OnOff"
                                }
                            },
                            {
                                "box": {
                                    "id": "r-gen",
                                    "maxclass": "newobj",
                                    "text": "gen~ @title br.contour.1.0",
                                    "numinlets": 15,
                                    "numoutlets": 4,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        260.0,
                                        3060.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.contour.1.0",
                                    "varname": "br.contour.1.0",
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 1,
                                                "revision": 4,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                100.0,
                                                100.0,
                                                1300.0,
                                                520.0
                                            ],
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-1",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 1 @comment audio L"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-2",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            100.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 2 @comment audio R"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-3",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            180.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 3 @comment trigger: rising edge through 0"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-4",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            260.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 4 @comment ampamount @default -1 @min -1 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-5",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            340.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 5 @comment amprise @default 5 @min 3 @max 5000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-6",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            420.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 6 @comment ampfall @default 250 @min 3 @max 10000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-7",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            500.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 7 @comment ampcurve @default 0 @min -1 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-8",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            580.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 8 @comment filtamount @default 0 @min -8 @max 8"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-9",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            660.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 9 @comment filtrise @default 5 @min 1 @max 5000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-10",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            740.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 10 @comment filtfall @default 250 @min 1 @max 10000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-11",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            820.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 11 @comment filtcurve @default 0 @min -1 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-12",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            900.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 12 @comment cutoff @default 20000 @min 20 @max 20000"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-13",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            980.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 13 @comment resonance @default 0 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-14",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1060.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 14 @comment mode @default 0 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-15",
                                                        "maxclass": "newobj",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            1140.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 15 @comment on @default 1 @min 0 @max 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "code": "// br.contour.1.0 -- two triggered envelopes, one shaping the level and one the lowpass cutoff, stereo\n// Each trigger starts both envelopes: rise to 1 at the Rise time, then fall back to 0 at the Fall time.\n// A new trigger restarts the rise from wherever the envelope is, so nothing ever jumps.\n// Curve 0 = straight, +1 = exponential (slow start, long tail), -1 = logarithmic. The envelope engine is\n// level-based (from br.function): each sample the level is turned back into a position on the curve,\n// moved one step, and turned into a level again, so changing a time or curve mid-flight never jumps.\n// Amp Amount -1..1: +1 = silent at rest, swells on each trigger; -1 = full at rest, dips on each trigger;\n//   0 = level untouched. gain = 1 - max(a, 0) + a * env.\n// Filter Amount, octaves -8..8: the cutoff moves this far from Cutoff at the top of the envelope;\n//   + opens, - closes, 0 = fixed cutoff. Lowpass = TPT state-variable filter, Resonance 0..1 = Q 0.707..5.\n// The two can work against each other (amp dips while the filter opens) or together (both + = lowpass gate).\n// On/Off and Mix Mode crossfade over 20 ms: Off + Thru = dry passes, Off + Aux = silent.\n// Fully Off = paused: envelopes and filter stop and reset, so turning On starts clean.\n// The level never moves faster than full scale in 2 ms.\n// CPU: the envelopes skip their math while idle; the cutoff (tan) is only recomputed when it moves.\n// Every stored value is read first and written last.\n// in1 / in2 audio L / R, in3 trigger (rising edge through 0), in4 amp amount, in5 amp rise ms, in6 amp fall ms,\n// in7 amp curve, in8 filter amount (oct), in9 filter rise ms, in10 filter fall ms, in11 filter curve,\n// in12 cutoff Hz, in13 resonance 0..1, in14 mix mode 0 Thru / 1 Aux, in15 on 0/1\n// out1 / out2 audio L / R, out3 amp envelope 0..1, out4 filter envelope 0..1\n\nHistory ya(0);\nHistory sa(0);\nHistory yf(0);\nHistory sf(0);\nHistory t_prev(0);\nHistory aa_s(0);\nHistory fo_s(0);\nHistory lc_s(0);\nHistory rs_s(0);\nHistory md_s(0);\nHistory on_s(1);\nHistory fc_last(0);\nHistory g_last(0);\nHistory z1l(0);\nHistory z2l(0);\nHistory z1r(0);\nHistory z2r(0);\nHistory gain_s(1);\nHistory init(0);\n\n// --- read all state first ---\nyav = ya;\nsav = sa;\nyfv = yf;\nsfv = sf;\ntp = t_prev;\naa = aa_s;\nfo = fo_s;\nlc = lc_s;\nrs = rs_s;\nmd = md_s;\nonv = on_s;\nfcl = fc_last;\ng = g_last;\ns1l = z1l;\ns2l = z2l;\ns1r = z1r;\ns2r = z2r;\ngl = gain_s;\n\nsr = samplerate;\nc10 = 1 - exp(-1 / max(1, mstosamps(10)));\nc20 = 1 - exp(-1 / max(1, mstosamps(20)));\ngst = 1 / max(1, mstosamps(2));\n\n// first sample: start the smoothed values at their targets (no glide at load)\nif (init < 0.5) {\n\taa = clip(in4, -1, 1);\n\tfo = clip(in8, -8, 8);\n\tlc = log(clip(in12, 20, 20000));\n\trs = clip(in13, 0, 1);\n\tmd = clip(in14, 0, 1);\n\tonv = clip(in15, 0, 1);\n\tgl = 1 - max(aa, 0);\n}\n\naa = aa + c10 * (clip(in4, -1, 1) - aa);\nfo = fo + c10 * (clip(in8, -8, 8) - fo);\nlc = lc + c10 * (log(clip(in12, 20, 20000)) - lc);\nrs = rs + c10 * (clip(in13, 0, 1) - rs);\nmd = md + c20 * (clip(in14, 0, 1) - md);\nonv = onv + c20 * ((in15 > 0.5) - onv);\n\ntrig = in3;\nedge = (trig > 0) && (tp <= 0);\n\nwl = in1;\nwr = in2;\nea = 0;\nef = 0;\ndr = 0;\ndf = 0;\na = 0;\nlin = 0;\necv = 0;\np = 0;\ndr2 = 0;\ndf2 = 0;\na2 = 0;\nlin2 = 0;\necv2 = 0;\np2 = 0;\nfc = 0;\nk = 0;\na1 = 0;\na2c = 0;\na3 = 0;\nv1 = 0;\nv2 = 0;\nv3 = 0;\nlpl = 0;\nlpr = 0;\ngain = 0;\n\nif (onv < 0.0001 && in15 < 0.5) {\n\t// fully off: paused and reset\n\tonv = 0;\n\tyav = 0;\n\tsav = 0;\n\tyfv = 0;\n\tsfv = 0;\n\ts1l = 0;\n\ts2l = 0;\n\ts1r = 0;\n\ts2r = 0;\n\tgl = 1 - max(aa, 0);\n} else {\n\t// --- amp envelope: stage 0 idle, 1 rising, 2 falling ---\n\tif (edge) {\n\t\tsav = 1;\n\t}\n\tif (sav > 0.5) {\n\t\tdr = 1 / max(mstosamps(clip(in5, 3, 60000)), 1);\n\t\tdf = 1 / max(mstosamps(clip(in6, 3, 60000)), 1);\n\t\ta = clip(in7, -1, 1) * 6;\n\t\tlin = abs(a) < 0.0001;\n\t\tecv = exp(a) - 1;\n\t\tif (sav < 1.5) {\n\t\t\tp = lin ? yav : log(1 + yav * ecv) / a;\n\t\t\tp = min(p + dr, 1);\n\t\t\tyav = lin ? p : (exp(a * p) - 1) / ecv;\n\t\t\tif (p >= 1) {\n\t\t\t\tyav = 1;\n\t\t\t\tsav = 2;\n\t\t\t}\n\t\t} else {\n\t\t\tp = lin ? yav : log(1 + yav * ecv) / a;\n\t\t\tp = max(p - df, 0);\n\t\t\tyav = lin ? p : (exp(a * p) - 1) / ecv;\n\t\t\tif (p <= 0) {\n\t\t\t\tyav = 0;\n\t\t\t\tsav = 0;\n\t\t\t}\n\t\t}\n\t}\n\t// --- filter envelope ---\n\tif (edge) {\n\t\tsfv = 1;\n\t}\n\tif (sfv > 0.5) {\n\t\tdr2 = 1 / max(mstosamps(clip(in9, 1, 60000)), 1);\n\t\tdf2 = 1 / max(mstosamps(clip(in10, 1, 60000)), 1);\n\t\ta2 = clip(in11, -1, 1) * 6;\n\t\tlin2 = abs(a2) < 0.0001;\n\t\tecv2 = exp(a2) - 1;\n\t\tif (sfv < 1.5) {\n\t\t\tp2 = lin2 ? yfv : log(1 + yfv * ecv2) / a2;\n\t\t\tp2 = min(p2 + dr2, 1);\n\t\t\tyfv = lin2 ? p2 : (exp(a2 * p2) - 1) / ecv2;\n\t\t\tif (p2 >= 1) {\n\t\t\t\tyfv = 1;\n\t\t\t\tsfv = 2;\n\t\t\t}\n\t\t} else {\n\t\t\tp2 = lin2 ? yfv : log(1 + yfv * ecv2) / a2;\n\t\t\tp2 = max(p2 - df2, 0);\n\t\t\tyfv = lin2 ? p2 : (exp(a2 * p2) - 1) / ecv2;\n\t\t\tif (p2 <= 0) {\n\t\t\t\tyfv = 0;\n\t\t\t\tsfv = 0;\n\t\t\t}\n\t\t}\n\t}\n\tea = yav;\n\tef = yfv;\n\n\t// --- lowpass: cutoff in octaves around Cutoff; tan only when the cutoff moves ---\n\tfc = clip(exp(lc + fo * ef * 0.693147), 20, sr * 0.45);\n\tif (abs(fc - fcl) > fc * 0.00001) {\n\t\tg = tan(pi * fc / sr);\n\t\tfcl = fc;\n\t}\n\tk = 1.414214 - 1.214214 * rs;\n\ta1 = 1 / (1 + g * (g + k));\n\ta2c = g * a1;\n\ta3 = g * a2c;\n\tv3 = in1 - s2l;\n\tv1 = a1 * s1l + a2c * v3;\n\tv2 = s2l + a2c * s1l + a3 * v3;\n\ts1l = 2 * v1 - s1l;\n\ts2l = 2 * v2 - s2l;\n\tlpl = v2;\n\tv3 = in2 - s2r;\n\tv1 = a1 * s1r + a2c * v3;\n\tv2 = s2r + a2c * s1r + a3 * v3;\n\ts1r = 2 * v1 - s1r;\n\ts2r = 2 * v2 - s2r;\n\tlpr = v2;\n\n\t// --- level ---\n\tgain = 1 - max(aa, 0) + aa * ea;\n\t// never faster than full scale in 2 ms: the steep end of a fast curved envelope can't click\n\tgain = gl + clip(gain - gl, -gst, gst);\n\tgl = gain;\n\twl = lpl * gain;\n\twr = lpr * gain;\n}\n\ndryg = (1 - onv) * (1 - md);\nout1 = wl * onv + in1 * dryg;\nout2 = wr * onv + in2 * dryg;\nout3 = ea;\nout4 = ef;\n\n// --- write state last ---\nya = yav;\nsa = sav;\nyf = yfv;\nsf = sfv;\nt_prev = trig;\naa_s = aa;\nfo_s = fo;\nlc_s = lc;\nrs_s = rs;\nmd_s = md;\non_s = onv;\nfc_last = fcl;\ng_last = g;\nz1l = s1l;\nz2l = s2l;\nz1r = s1r;\nz2r = s2r;\ngain_s = gl;\ninit = 1;\n",
                                                        "fontface": 0,
                                                        "fontname": "<Monospaced>",
                                                        "fontsize": 12.0,
                                                        "id": "obj-code",
                                                        "maxclass": "codebox",
                                                        "numinlets": 15,
                                                        "numoutlets": 4,
                                                        "outlettype": [
                                                            "",
                                                            "",
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            20.0,
                                                            80.0,
                                                            1180.0,
                                                            300.0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o1",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            20.0,
                                                            420.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment audio L"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o2",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            140.0,
                                                            420.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment audio R"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o3",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            260.0,
                                                            420.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 3 @comment amp envelope 0 to 1"
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0,
                                                        "id": "obj-o4",
                                                        "maxclass": "newobj",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "patching_rect": [
                                                            380.0,
                                                            420.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 4 @comment filter envelope 0 to 1"
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-1",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-2",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            1
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-3",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            2
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-4",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            3
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            4
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-6",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            5
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-7",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            6
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-8",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            7
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-9",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            8
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-10",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            9
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-11",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            10
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-12",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            11
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-13",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            12
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-14",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            13
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-15",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-code",
                                                            14
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-code",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-o1",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-code",
                                                            1
                                                        ],
                                                        "destination": [
                                                            "obj-o2",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-code",
                                                            2
                                                        ],
                                                        "destination": [
                                                            "obj-o3",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-code",
                                                            3
                                                        ],
                                                        "destination": [
                                                            "obj-o4",
                                                            0
                                                        ]
                                                    }
                                                }
                                            ]
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        30.0,
                                        320.0,
                                        220.0,
                                        52.0
                                    ],
                                    "text": "out~ 1 @comment \"Left Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_r-out1",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        260.0,
                                        320.0,
                                        220.0,
                                        52.0
                                    ],
                                    "text": "out~ 2 @comment \"Right Out (Signal)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_r-out2",
                                    "linecount": 2
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        490.0,
                                        320.0,
                                        220.0,
                                        52.0
                                    ],
                                    "text": "out~ 3 @comment \"Amp Envelope (Signal) 0 to 1; the raw envelope (before Amp Amount). For meters or modulating other things\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "out~_r-out3",
                                    "linecount": 4
                                }
                            },
                            {
                                "box": {
                                    "id": "r-out4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "outlettype": [],
                                    "patching_rect": [
                                        720.0,
                                        320.0,
                                        220.0,
                                        52.0
                                    ],
                                    "text": "out~ 4 @comment \"Filter Envelope (Signal) 0 to 1; the raw envelope (before Filter Amount)\"",
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "out~_r-out4",
                                    "linecount": 3
                                }
                            },
                            {
                                "box": {
                                    "id": "r-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        400.0,
                                        900.0,
                                        50.0
                                    ],
                                    "linecount": 3,
                                    "text": "gen~ code MUST MATCH br.contour.1.0 (open both: same gen~ patcher and codebox). The 12 params have the same names, ranges and dial curves as the live.dials in br.contour.ui.1.0; inlets 4 to 15 set them, so the external has the same 15 inlets as the abstraction (controls as numbers only)."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "r-in3",
                                        0
                                    ],
                                    "destination": [
                                        "r-click",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-notein",
                                        0
                                    ],
                                    "destination": [
                                        "r-strip",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-notein",
                                        1
                                    ],
                                    "destination": [
                                        "r-strip",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-strip",
                                        1
                                    ],
                                    "destination": [
                                        "r-click",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in4",
                                        0
                                    ],
                                    "destination": [
                                        "p-AmpAmount",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-AmpAmount",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in5",
                                        0
                                    ],
                                    "destination": [
                                        "p-AmpRise",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-AmpRise",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in6",
                                        0
                                    ],
                                    "destination": [
                                        "p-AmpFall",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-AmpFall",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in7",
                                        0
                                    ],
                                    "destination": [
                                        "p-AmpCurve",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-AmpCurve",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in8",
                                        0
                                    ],
                                    "destination": [
                                        "p-FilterAmount",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-FilterAmount",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in9",
                                        0
                                    ],
                                    "destination": [
                                        "p-FilterRise",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-FilterRise",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in10",
                                        0
                                    ],
                                    "destination": [
                                        "p-FilterFall",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-FilterFall",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in11",
                                        0
                                    ],
                                    "destination": [
                                        "p-FilterCurve",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-FilterCurve",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in12",
                                        0
                                    ],
                                    "destination": [
                                        "p-Cutoff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Cutoff",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in13",
                                        0
                                    ],
                                    "destination": [
                                        "p-Resonance",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-Resonance",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        12
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in14",
                                        0
                                    ],
                                    "destination": [
                                        "p-MixMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-MixMode",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        13
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in15",
                                        0
                                    ],
                                    "destination": [
                                        "p-OnOff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "p-OnOff",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        14
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in1",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-in2",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-click",
                                        0
                                    ],
                                    "destination": [
                                        "r-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        0
                                    ],
                                    "destination": [
                                        "r-out1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        1
                                    ],
                                    "destination": [
                                        "r-out2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        2
                                    ],
                                    "destination": [
                                        "r-out3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "r-gen",
                                        3
                                    ],
                                    "destination": [
                                        "r-out4",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        30.0,
                        330.0,
                        700.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "e6693630-9c2b-489c-93f3-cad068f4a343"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-export",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        450.0,
                        380.0,
                        340.0,
                        75.0
                    ],
                    "text": "EXPORT NAME: br.contour.1.0~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction and Max loads whichever it finds first.",
                    "linecount": 5
                }
            },
            {
                "box": {
                    "id": "obj-gain",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        30.0,
                        380.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        30.0,
                        530.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-scamp",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        110.0,
                        380.0,
                        160.0,
                        80.0
                    ],
                    "outlettype": [
                        "bang"
                    ]
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
                    "patching_rect": [
                        110.0,
                        462.0,
                        160.0,
                        20.0
                    ],
                    "text": "Amp Envelope, 0 to 1",
                    "linecount": 1
                }
            },
            {
                "box": {
                    "id": "obj-scflt",
                    "maxclass": "live.scope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "patching_rect": [
                        280.0,
                        380.0,
                        160.0,
                        80.0
                    ],
                    "outlettype": [
                        "bang"
                    ]
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
                    "patching_rect": [
                        280.0,
                        462.0,
                        160.0,
                        20.0
                    ],
                    "text": "Filter Envelope, 0 to 1",
                    "linecount": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-tog",
                        0
                    ],
                    "destination": [
                        "obj-metro",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-metro",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-btn",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-pl",
                        1
                    ],
                    "destination": [
                        "obj-rnbo",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr8",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr9",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr10",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr11",
                        0
                    ],
                    "destination": [
                        "obj-rnbo",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        0
                    ],
                    "destination": [
                        "obj-gain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        1
                    ],
                    "destination": [
                        "obj-gain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        0
                    ],
                    "destination": [
                        "obj-dac",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-gain",
                        1
                    ],
                    "destination": [
                        "obj-dac",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        2
                    ],
                    "destination": [
                        "obj-scamp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-rnbo",
                        3
                    ],
                    "destination": [
                        "obj-scflt",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gain": [
                "Out",
                "Out",
                0
            ],
            "inherited_shortname": 1
        }
    }
}