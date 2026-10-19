{
	"patcher": {
		"description": "br.contour.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
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
			341.0,
			81.0
		],
		"openrectmode": 0,
		"openinpresentation": 0,
		"devicewidth": 341.0,
		"rect": [
			85.0,
			104.0,
			1400.0,
			420.0
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
					"comment": "Amp Amount (Signal/Float) -1 - 1. +1 = silent at rest, swells on each trigger; -1 = full at rest, dips on each trigger; 0 = level untouched. Default -1",
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
					"comment": "Amp Rise (Signal/Float) 3 - 5000 ms. Time to rise to the top. Default 5",
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
					"comment": "Amp Fall (Signal/Float) 3 - 10000 ms. Time to fall back. Default 250",
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
					"comment": "Amp Curve (Signal/Float) -1 - 1. 0 = straight, +1 = exponential (slow start, long tail), -1 = logarithmic. Default 0",
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
					"comment": "Filter Amount (Signal/Float) -8 - 8 octaves. How far the cutoff moves at the top of the envelope: + opens, - closes, 0 = fixed. Default 0",
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
					"comment": "Filter Rise (Signal/Float) 1 - 5000 ms. Default 5",
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
					"comment": "Filter Fall (Signal/Float) 1 - 10000 ms. Default 250",
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
					"comment": "Filter Curve (Signal/Float) -1 - 1. 0 = straight, +1 = exponential, -1 = logarithmic. Default 0",
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
					"comment": "Cutoff (Signal/Float) 20 - 20000 Hz. The lowpass cutoff at rest; Filter Amount moves it from here. Default 20000 (open)",
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
					"comment": "Resonance (Signal/Float) 0 - 1 = Q 0.707 - 5. Default 0",
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
					"text": "br.contour.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: envelope engine from br.function (inspired by the Make Noise Maths); the lowpass-gate idea goes back to Don Buchla's 292.",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						15,
						520,
						60
					],
					"linecount": 4
				}
			},
			{
				"box": {
					"id": "obj-title",
					"maxclass": "comment",
					"text": "contour",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						85,
						80,
						20
					]
				}
			},
			{
				"box": {
					"id": "obj-why",
					"maxclass": "comment",
					"text": "The plain object: everything goes straight into one gen~ (defaults come from its in @default, so nothing needs a loadbang). Bangs on the Trigger inlet become a click~, a one-sample signal pulse, so the trigger is sample-accurate. Amp and filter each have their own envelope; both start on every trigger. The Amp / Filter Envelope outlets carry the raw envelopes for other uses.",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						1200,
						115,
						520,
						100
					],
					"linecount": 6
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
						86,
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
						210,
						85,
						51,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-tb",
					"maxclass": "newobj",
					"text": "t b",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"bang"
					],
					"patching_rect": [
						240,
						115,
						29,
						22
					]
				}
			},
			{
				"box": {
					"id": "obj-click",
					"maxclass": "newobj",
					"text": "click~",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						165,
						145,
						58,
						22
					]
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 12.0,
					"id": "obj-gen",
					"maxclass": "newobj",
					"numinlets": 15,
					"numoutlets": 4,
					"outlettype": [
						"signal",
						"signal",
						"signal",
						"signal"
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
					},
					"patching_rect": [
						15,
						200,
						1110,
						22.0
					],
					"text": "gen~ @title br.contour.1.0",
					"varname": "br_contour"
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
						260.0,
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
						260.0,
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
						260.0,
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
						260.0,
						30.0,
						30.0
					],
					"comment": "Filter Envelope (Signal) 0 to 1, the raw envelope (before Filter Amount)",
					"index": 4
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
						"obj-click",
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
						"obj-click",
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
						"obj-gen",
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
						"obj-gen",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-click",
						0
					],
					"destination": [
						"obj-gen",
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
						"obj-gen",
						3
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
						"obj-gen",
						4
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
						"obj-gen",
						5
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
						"obj-gen",
						6
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
						"obj-gen",
						7
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
						"obj-gen",
						8
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
						"obj-gen",
						9
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
						"obj-gen",
						10
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
						"obj-gen",
						11
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
						"obj-gen",
						12
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
						"obj-gen",
						13
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
						"obj-gen",
						14
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-gen",
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
						"obj-gen",
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
						"obj-gen",
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
						"obj-gen",
						3
					],
					"destination": [
						"out-3",
						0
					]
				}
			}
		]
	}
}