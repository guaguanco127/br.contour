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
		"openrect": [
			85.0,
			104.0,
			320.0,
			134.0
		],
		"openrectmode": 0,
		"openinpresentation": 1,
		"devicewidth": 320.0,
		"description": "br.contour.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
		"rect": [
			85.0,
			104.0,
			1400.0,
			520.0
		],
		"boxes": [
			{
				"box": {
					"id": "in-0",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						15.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Left In (Signal)",
					"index": 1
				}
			},
			{
				"box": {
					"id": "in-1",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						90.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Right In (Signal)",
					"index": 2
				}
			},
			{
				"box": {
					"id": "in-2",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						165.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Trigger (Bang) a bang, any nonzero number (e.g. a note-on velocity) or any word starts both envelopes from wherever they are. 0 is ignored",
					"index": 3
				}
			},
			{
				"box": {
					"id": "in-3",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						240.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Amp Amount (Float) -1 - 1. +1 = silent at rest, swells on each trigger; -1 = full at rest, dips on each trigger; 0 = level untouched. Default -1",
					"index": 4
				}
			},
			{
				"box": {
					"id": "in-4",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						315.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Amp Rise (Float) 3 - 5000 ms. Time to rise to the top. Default 5",
					"index": 5
				}
			},
			{
				"box": {
					"id": "in-5",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						390.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Amp Fall (Float) 3 - 10000 ms. Time to fall back. Default 250",
					"index": 6
				}
			},
			{
				"box": {
					"id": "in-6",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						465.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Amp Curve (Float) -1 - 1. 0 = straight, +1 = exponential (slow start, long tail), -1 = logarithmic. Default 0",
					"index": 7
				}
			},
			{
				"box": {
					"id": "in-7",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						540.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Filter Amount (Float) -8 - 8 octaves. How far the cutoff moves at the top of the envelope: + opens, - closes, 0 = fixed. Default 0",
					"index": 8
				}
			},
			{
				"box": {
					"id": "in-8",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						615.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Filter Rise (Float) 1 - 5000 ms. Default 5",
					"index": 9
				}
			},
			{
				"box": {
					"id": "in-9",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						690.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Filter Fall (Float) 1 - 10000 ms. Default 250",
					"index": 10
				}
			},
			{
				"box": {
					"id": "in-10",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						765.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Filter Curve (Float) -1 - 1. 0 = straight, +1 = exponential, -1 = logarithmic. Default 0",
					"index": 11
				}
			},
			{
				"box": {
					"id": "in-11",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						840.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Cutoff (Float) 20 - 20000 Hz. The lowpass cutoff at rest; Filter Amount moves it from here. Default 20000 (open)",
					"index": 12
				}
			},
			{
				"box": {
					"id": "in-12",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						915.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Resonance (Float) 0 - 1 = Q 0.707 - 5. Default 0",
					"index": 13
				}
			},
			{
				"box": {
					"id": "in-13",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						990.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "Mix Mode (Int) 0 = Thru, 1 = Aux: what you hear when Off. Thru = the dry signal, Aux = silence. Default 0",
					"index": 14
				}
			},
			{
				"box": {
					"id": "in-14",
					"maxclass": "inlet",
					"numinlets": 0,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1065.0,
						15.0,
						30.0,
						30.0
					],
					"comment": "On/Off (Int) 1 on, 0 off. Off fades over 20 ms, then the envelopes and filter pause. Default 1",
					"index": 15
				}
			},
			{
				"box": {
					"id": "obj-signature",
					"maxclass": "comment",
					"text": "br.contour.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						15,
						520,
						47
					],
					"linecount": 3
				}
			},
			{
				"box": {
					"id": "obj-why",
					"maxclass": "comment",
					"text": "[br.contour.1.0] is the real object: the gen~ lives inside it. This file only adds the panel, keeps each control's value in an [f]/[i] and re-sends them all at load (deferlow), and reports changes on the State outlet as <name> <value>.",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						70,
						520,
						60
					],
					"linecount": 4
				}
			},
			{
				"box": {
					"id": "obj-route",
					"maxclass": "newobj",
					"text": "route bang",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						165,
						55,
						70,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-sel",
					"maxclass": "newobj",
					"text": "sel 0",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"bang",
						""
					],
					"patching_rect": [
						185,
						85,
						45,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-trig",
					"maxclass": "live.button",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"parameter_enable": 1,
					"patching_rect": [
						165.0,
						115.0,
						20.0,
						20.0
					],
					"presentation": 1,
					"presentation_rect": [
						58.0,
						3.0,
						20.0,
						20.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_enum": [
								"off",
								"on"
							],
							"parameter_longname": "Trigger",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "Trigger",
							"parameter_type": 2
						}
					},
					"varname": "Trigger"
				}
			},
			{
				"box": {
					"id": "obj-core",
					"maxclass": "newobj",
					"text": "br.contour.1.0",
					"numinlets": 15,
					"numoutlets": 4,
					"outlettype": [
						"signal",
						"signal",
						"signal",
						"signal"
					],
					"patching_rect": [
						15,
						340,
						1110,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-ampamount",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						240.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						40,
						26,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 1.0,
							"parameter_initial": [
								-1.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Amp Amount",
							"parameter_mmax": 1.0,
							"parameter_mmin": -1.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Amount",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Amp Amount"
				}
			},
			{
				"box": {
					"id": "store-ampamount",
					"maxclass": "newobj",
					"text": "f -1.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						240.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampamount-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						240.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampamount-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						260.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampamount-p",
					"maxclass": "newobj",
					"text": "prepend ampamount",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						260.0,
						228,
						123,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-amprise",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						315.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						86,
						26,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								5.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Amp Rise",
							"parameter_mmax": 5000.0,
							"parameter_mmin": 3.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Rise",
							"parameter_type": 0,
							"parameter_unitstyle": 2
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Amp Rise"
				}
			},
			{
				"box": {
					"id": "store-amprise",
					"maxclass": "newobj",
					"text": "f 5.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						315.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-amprise-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						315.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-amprise-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						335.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-amprise-p",
					"maxclass": "newobj",
					"text": "prepend amprise",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						335.0,
						288,
						109,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-ampfall",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						390.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						132,
						26,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								250.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Amp Fall",
							"parameter_mmax": 10000.0,
							"parameter_mmin": 3.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Fall",
							"parameter_type": 0,
							"parameter_unitstyle": 2
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Amp Fall"
				}
			},
			{
				"box": {
					"id": "store-ampfall",
					"maxclass": "newobj",
					"text": "f 250.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						390.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampfall-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						390.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampfall-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						410.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampfall-p",
					"maxclass": "newobj",
					"text": "prepend ampfall",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						410.0,
						228,
						109,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-ampcurve",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						465.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						178,
						26,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 1.0,
							"parameter_initial": [
								0.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Amp Curve",
							"parameter_mmax": 1.0,
							"parameter_mmin": -1.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Curve",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Amp Curve"
				}
			},
			{
				"box": {
					"id": "store-ampcurve",
					"maxclass": "newobj",
					"text": "f 0.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						465.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampcurve-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						465.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampcurve-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						485.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-ampcurve-p",
					"maxclass": "newobj",
					"text": "prepend ampcurve",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						485.0,
						288,
						116,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-filtamount",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						540.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						40,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 1.0,
							"parameter_initial": [
								0.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Filter Amount",
							"parameter_mmax": 8.0,
							"parameter_mmin": -8.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Octaves",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Filter Amount"
				}
			},
			{
				"box": {
					"id": "store-filtamount",
					"maxclass": "newobj",
					"text": "f 0.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						540.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtamount-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						540.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtamount-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						560.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtamount-p",
					"maxclass": "newobj",
					"text": "prepend filtamount",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						560.0,
						228,
						130,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-filtrise",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						615.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						86,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								5.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Filter Rise",
							"parameter_mmax": 5000.0,
							"parameter_mmin": 1.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Rise",
							"parameter_type": 0,
							"parameter_unitstyle": 2
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Filter Rise"
				}
			},
			{
				"box": {
					"id": "store-filtrise",
					"maxclass": "newobj",
					"text": "f 5.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						615.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtrise-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						615.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtrise-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						635.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtrise-p",
					"maxclass": "newobj",
					"text": "prepend filtrise",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						635.0,
						288,
						116,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-filtfall",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						690.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						132,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								250.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Filter Fall",
							"parameter_mmax": 10000.0,
							"parameter_mmin": 1.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Fall",
							"parameter_type": 0,
							"parameter_unitstyle": 2
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Filter Fall"
				}
			},
			{
				"box": {
					"id": "store-filtfall",
					"maxclass": "newobj",
					"text": "f 250.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						690.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtfall-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						690.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtfall-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						710.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtfall-p",
					"maxclass": "newobj",
					"text": "prepend filtfall",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						710.0,
						228,
						116,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-filtcurve",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						765.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						178,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 1.0,
							"parameter_initial": [
								0.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Filter Curve",
							"parameter_mmax": 1.0,
							"parameter_mmin": -1.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Curve",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Filter Curve"
				}
			},
			{
				"box": {
					"id": "store-filtcurve",
					"maxclass": "newobj",
					"text": "f 0.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						765.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtcurve-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						765.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtcurve-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						785.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-filtcurve-p",
					"maxclass": "newobj",
					"text": "prepend filtcurve",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						785.0,
						288,
						123,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-cutoff",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						840.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						224,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 4.0,
							"parameter_initial": [
								20000.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Cutoff",
							"parameter_mmax": 20000.0,
							"parameter_mmin": 20.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Cutoff",
							"parameter_type": 0,
							"parameter_unitstyle": 3
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Cutoff"
				}
			},
			{
				"box": {
					"id": "store-cutoff",
					"maxclass": "newobj",
					"text": "f 20000.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						840.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-cutoff-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						840.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-cutoff-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						860.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-cutoff-p",
					"maxclass": "newobj",
					"text": "prepend cutoff",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						860.0,
						228,
						102,
						22
					]
				}
			},
			{
				"box": {
					"activeneedlecolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"id": "ctl-resonance",
					"maxclass": "live.dial",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						"float"
					],
					"parameter_enable": 1,
					"patching_rect": [
						915.0,
						60.0,
						44.0,
						48.0
					],
					"presentation": 1,
					"presentation_rect": [
						270,
						80,
						44.0,
						48.0
					],
					"saved_attribute_attributes": {
						"activeneedlecolor": {
							"expression": ""
						},
						"textcolor": {
							"expression": ""
						},
						"valueof": {
							"parameter_exponent": 1.0,
							"parameter_initial": [
								0.0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Resonance",
							"parameter_mmax": 1.0,
							"parameter_mmin": 0.0,
							"parameter_modmode": 0,
							"parameter_shortname": "Reso",
							"parameter_type": 0,
							"parameter_unitstyle": 1
						}
					},
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"varname": "Resonance"
				}
			},
			{
				"box": {
					"id": "store-resonance",
					"maxclass": "newobj",
					"text": "f 0.0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"float"
					],
					"patching_rect": [
						915.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-resonance-t",
					"maxclass": "newobj",
					"text": "t f f",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"float",
						"float"
					],
					"patching_rect": [
						915.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-resonance-c",
					"maxclass": "newobj",
					"text": "change 0.",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						935.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-resonance-p",
					"maxclass": "newobj",
					"text": "prepend resonance",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						935.0,
						288,
						123,
						22
					]
				}
			},
			{
				"box": {
					"id": "ctl-mode",
					"maxclass": "live.text",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 1,
					"patching_rect": [
						990.0,
						60.0,
						44.0,
						18.0
					],
					"presentation": 1,
					"presentation_rect": [
						134,
						4,
						44.0,
						18.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_enum": [
								"off",
								"on"
							],
							"parameter_initial": [
								0
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "Mix Mode",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "Mix Mode",
							"parameter_type": 2
						}
					},
					"text": "Thru",
					"texton": "Aux",
					"varname": "Mix Mode"
				}
			},
			{
				"box": {
					"id": "store-mode",
					"maxclass": "newobj",
					"text": "i 0",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						990.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-mode-t",
					"maxclass": "newobj",
					"text": "t i i",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						990.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-mode-c",
					"maxclass": "newobj",
					"text": "change -1",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1010.0,
						200,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-mode-p",
					"maxclass": "newobj",
					"text": "prepend mode",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1010.0,
						228,
						88,
						22
					]
				}
			},
			{
				"box": {
					"id": "ctl-on",
					"maxclass": "live.text",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"parameter_enable": 1,
					"patching_rect": [
						1065.0,
						60.0,
						44.0,
						18.0
					],
					"presentation": 1,
					"presentation_rect": [
						86,
						4,
						44.0,
						18.0
					],
					"saved_attribute_attributes": {
						"valueof": {
							"parameter_enum": [
								"off",
								"on"
							],
							"parameter_initial": [
								1
							],
							"parameter_initial_enable": 1,
							"parameter_longname": "On/Off",
							"parameter_mmax": 1,
							"parameter_modmode": 0,
							"parameter_shortname": "On/Off",
							"parameter_type": 2
						}
					},
					"text": "Off",
					"texton": "On",
					"varname": "On/Off"
				}
			},
			{
				"box": {
					"id": "store-on",
					"maxclass": "newobj",
					"text": "i 1",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"int"
					],
					"patching_rect": [
						1065.0,
						120,
						50,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-on-t",
					"maxclass": "newobj",
					"text": "t i i",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"int",
						"int"
					],
					"patching_rect": [
						1065.0,
						150,
						40,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-on-c",
					"maxclass": "newobj",
					"text": "change -1",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"int",
						"int"
					],
					"patching_rect": [
						1085.0,
						260,
						66,
						22
					]
				}
			},
			{
				"box": {
					"id": "st-on-p",
					"maxclass": "newobj",
					"text": "prepend on",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1085.0,
						288,
						74,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-lb",
					"maxclass": "newobj",
					"text": "loadbang",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						1200,
						140,
						72,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-dl",
					"maxclass": "newobj",
					"text": "deferlow",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						1200,
						165,
						72,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-tbs",
					"maxclass": "newobj",
					"text": "t b b b b b b b b b b b b",
					"numinlets": 1,
					"numoutlets": 12,
					"outlettype": [
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang",
						"bang"
					],
					"patching_rect": [
						1200,
						190,
						250,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-reset",
					"maxclass": "comment",
					"text": "each control's value is kept in an [f]/[i]; at load they are all re-sent to the core (deferlow), so the dials and the gen~ always agree.",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						215,
						520,
						33
					],
					"linecount": 2
				}
			},
			{
				"box": {
					"id": "out-0",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						15.0,
						440.0,
						30.0,
						30.0
					],
					"comment": "Left Out (Signal)",
					"index": 1
				}
			},
			{
				"box": {
					"id": "out-1",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						105.0,
						440.0,
						30.0,
						30.0
					],
					"comment": "Right Out (Signal)",
					"index": 2
				}
			},
			{
				"box": {
					"id": "out-2",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						195.0,
						440.0,
						30.0,
						30.0
					],
					"comment": "Amp Envelope (Signal) 0 to 1, the raw envelope (before Amp Amount). For meters or modulating other things",
					"index": 3
				}
			},
			{
				"box": {
					"id": "out-3",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						285.0,
						440.0,
						30.0,
						30.0
					],
					"comment": "Filter Envelope (Signal) 0 to 1, the raw envelope (before Filter Amount)",
					"index": 4
				}
			},
			{
				"box": {
					"id": "out-state",
					"maxclass": "outlet",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1050.0,
						440.0,
						30.0,
						30.0
					],
					"index": 5,
					"comment": "State (Message): ampamount, amprise, ampfall, ampcurve, filtamount, filtrise, filtfall, filtcurve, cutoff, resonance, mode, on, sent the moment a control changes. Pick them out by name: [route ampamount amprise ampfall ampcurve filtamount filtrise filtfall filtcurve cutoff resonance mode on]"
				}
			},
			{
				"box": {
					"id": "lbl-title",
					"maxclass": "comment",
					"text": "contour",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1206,
						303,
						70,
						20
					],
					"presentation": 1,
					"presentation_rect": [
						2,
						3,
						54,
						20
					],
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "lbl-amp",
					"maxclass": "comment",
					"text": "amp",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1206,
						340,
						70,
						20
					],
					"presentation": 1,
					"presentation_rect": [
						2,
						40,
						36,
						20
					],
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"id": "lbl-filt",
					"maxclass": "comment",
					"text": "filter",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1206,
						394,
						70,
						20
					],
					"presentation": 1,
					"presentation_rect": [
						2,
						94,
						38,
						20
					],
					"textcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					]
				}
			},
			{
				"box": {
					"annotation": "br.contour.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
					"background": 1,
					"bgcolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"bordercolor": [
						0.0,
						0.0,
						0.0,
						1.0
					],
					"hint": "br.contour.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
					"id": "obj-panel",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1500.0,
						300.0,
						128.0,
						128.0
					],
					"presentation": 1,
					"presentation_rect": [
						0.0,
						0.0,
						320.0,
						134.0
					],
					"rounded": 7
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 12.0,
					"id": "obj-tb",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						195.0,
						112.0,
						29.0,
						22.0
					],
					"text": "t b"
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"source": [
						"in-2",
						0
					],
					"destination": [
						"obj-route",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-route",
						0
					],
					"destination": [
						"obj-trig",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-route",
						1
					],
					"destination": [
						"obj-sel",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-0",
						0
					],
					"destination": [
						"obj-core",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-1",
						0
					],
					"destination": [
						"obj-core",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-trig",
						0
					],
					"destination": [
						"obj-core",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-3",
						0
					],
					"destination": [
						"ctl-ampamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-ampamount",
						0
					],
					"destination": [
						"store-ampamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-ampamount",
						0
					],
					"destination": [
						"st-ampamount-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampamount-t",
						0
					],
					"destination": [
						"obj-core",
						3
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampamount-t",
						1
					],
					"destination": [
						"st-ampamount-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampamount-c",
						0
					],
					"destination": [
						"st-ampamount-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-4",
						0
					],
					"destination": [
						"ctl-amprise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-amprise",
						0
					],
					"destination": [
						"store-amprise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-amprise",
						0
					],
					"destination": [
						"st-amprise-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-amprise-t",
						0
					],
					"destination": [
						"obj-core",
						4
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-amprise-t",
						1
					],
					"destination": [
						"st-amprise-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-amprise-c",
						0
					],
					"destination": [
						"st-amprise-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-5",
						0
					],
					"destination": [
						"ctl-ampfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-ampfall",
						0
					],
					"destination": [
						"store-ampfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-ampfall",
						0
					],
					"destination": [
						"st-ampfall-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampfall-t",
						0
					],
					"destination": [
						"obj-core",
						5
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampfall-t",
						1
					],
					"destination": [
						"st-ampfall-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampfall-c",
						0
					],
					"destination": [
						"st-ampfall-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-6",
						0
					],
					"destination": [
						"ctl-ampcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-ampcurve",
						0
					],
					"destination": [
						"store-ampcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-ampcurve",
						0
					],
					"destination": [
						"st-ampcurve-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampcurve-t",
						0
					],
					"destination": [
						"obj-core",
						6
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampcurve-t",
						1
					],
					"destination": [
						"st-ampcurve-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampcurve-c",
						0
					],
					"destination": [
						"st-ampcurve-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-7",
						0
					],
					"destination": [
						"ctl-filtamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-filtamount",
						0
					],
					"destination": [
						"store-filtamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-filtamount",
						0
					],
					"destination": [
						"st-filtamount-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtamount-t",
						0
					],
					"destination": [
						"obj-core",
						7
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtamount-t",
						1
					],
					"destination": [
						"st-filtamount-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtamount-c",
						0
					],
					"destination": [
						"st-filtamount-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-8",
						0
					],
					"destination": [
						"ctl-filtrise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-filtrise",
						0
					],
					"destination": [
						"store-filtrise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-filtrise",
						0
					],
					"destination": [
						"st-filtrise-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtrise-t",
						0
					],
					"destination": [
						"obj-core",
						8
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtrise-t",
						1
					],
					"destination": [
						"st-filtrise-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtrise-c",
						0
					],
					"destination": [
						"st-filtrise-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-9",
						0
					],
					"destination": [
						"ctl-filtfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-filtfall",
						0
					],
					"destination": [
						"store-filtfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-filtfall",
						0
					],
					"destination": [
						"st-filtfall-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtfall-t",
						0
					],
					"destination": [
						"obj-core",
						9
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtfall-t",
						1
					],
					"destination": [
						"st-filtfall-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtfall-c",
						0
					],
					"destination": [
						"st-filtfall-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-10",
						0
					],
					"destination": [
						"ctl-filtcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-filtcurve",
						0
					],
					"destination": [
						"store-filtcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-filtcurve",
						0
					],
					"destination": [
						"st-filtcurve-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtcurve-t",
						0
					],
					"destination": [
						"obj-core",
						10
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtcurve-t",
						1
					],
					"destination": [
						"st-filtcurve-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtcurve-c",
						0
					],
					"destination": [
						"st-filtcurve-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-11",
						0
					],
					"destination": [
						"ctl-cutoff",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-cutoff",
						0
					],
					"destination": [
						"store-cutoff",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-cutoff",
						0
					],
					"destination": [
						"st-cutoff-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-cutoff-t",
						0
					],
					"destination": [
						"obj-core",
						11
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-cutoff-t",
						1
					],
					"destination": [
						"st-cutoff-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-cutoff-c",
						0
					],
					"destination": [
						"st-cutoff-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-12",
						0
					],
					"destination": [
						"ctl-resonance",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-resonance",
						0
					],
					"destination": [
						"store-resonance",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-resonance",
						0
					],
					"destination": [
						"st-resonance-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-resonance-t",
						0
					],
					"destination": [
						"obj-core",
						12
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-resonance-t",
						1
					],
					"destination": [
						"st-resonance-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-resonance-c",
						0
					],
					"destination": [
						"st-resonance-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-13",
						0
					],
					"destination": [
						"ctl-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-mode",
						0
					],
					"destination": [
						"store-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-mode",
						0
					],
					"destination": [
						"st-mode-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-mode-t",
						0
					],
					"destination": [
						"obj-core",
						13
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-mode-t",
						1
					],
					"destination": [
						"st-mode-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-mode-c",
						0
					],
					"destination": [
						"st-mode-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"in-14",
						0
					],
					"destination": [
						"ctl-on",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"ctl-on",
						0
					],
					"destination": [
						"store-on",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"store-on",
						0
					],
					"destination": [
						"st-on-t",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-on-t",
						0
					],
					"destination": [
						"obj-core",
						14
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-on-t",
						1
					],
					"destination": [
						"st-on-c",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-on-c",
						0
					],
					"destination": [
						"st-on-p",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-lb",
						0
					],
					"destination": [
						"obj-dl",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-dl",
						0
					],
					"destination": [
						"obj-tbs",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						0
					],
					"destination": [
						"store-ampamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						1
					],
					"destination": [
						"store-amprise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						2
					],
					"destination": [
						"store-ampfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						3
					],
					"destination": [
						"store-ampcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						4
					],
					"destination": [
						"store-filtamount",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						5
					],
					"destination": [
						"store-filtrise",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						6
					],
					"destination": [
						"store-filtfall",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						7
					],
					"destination": [
						"store-filtcurve",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						8
					],
					"destination": [
						"store-cutoff",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						9
					],
					"destination": [
						"store-resonance",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						10
					],
					"destination": [
						"store-mode",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tbs",
						11
					],
					"destination": [
						"store-on",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-core",
						0
					],
					"destination": [
						"out-0",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-core",
						1
					],
					"destination": [
						"out-1",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-core",
						2
					],
					"destination": [
						"out-2",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-core",
						3
					],
					"destination": [
						"out-3",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampamount-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-amprise-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampfall-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-ampcurve-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtamount-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtrise-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtfall-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-filtcurve-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-cutoff-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-resonance-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-mode-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"st-on-p",
						0
					],
					"destination": [
						"out-state",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-sel",
						1
					],
					"destination": [
						"obj-tb",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-tb",
						0
					],
					"destination": [
						"obj-trig",
						0
					]
				}
			}
		]
	}
}