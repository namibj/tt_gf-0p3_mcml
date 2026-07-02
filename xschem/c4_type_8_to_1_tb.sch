v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1500 40 760 660 {flags=graph
y1=1.1559607
y2=2.9991607
ypos1=0
ypos2=2
divy=5
unity=1
x1=2.5653501e-08
x2=3.4879689e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_0
clk_2
\\"measured; clk_0 clk_2 -\\"

clk_c8_0
clk_c8_2
\\"measured; clk_c8_0 clk_c8_2 -\\""
color="4 5 6 7 8 9"
unitx=1
logx=0
logy=0
hilight_wave=2
autoload=1
sim_type=tran
rawfile=$netlist_dir/c4_type_8_to_1_tb.raw
rainbow=0
dataset=-1
subdivy=1}
B 2 2960 -2420 7750 -40 {flags=graph
y1=1.5053449
y2=3.799105
ypos1=0
ypos2=2
divy=5
unity=1
x1=2.5653501e-08
x2=3.4879689e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_0_s
clk_2_s
\\"clk_0_2_diff; clk_0_s clk_2_s -\\"

mux2_clk_p
mux2_clk_n
\\"mux2_clk_diff; mux2_clk_p mux_clk_n -\\""
color="4 5 6 7 8 4"
unitx=1
logx=0
logy=0
hilight_wave=2
autoload=1
sim_type=tran
rawfile=$netlist_dir/c4_type_8_to_1_tb.raw
rainbow=0
dataset=-1
subdivy=1}
B 2 2960 -4860 7750 -2480 {flags=graph
y1=-2.2
y2=3.4
ypos1=0
ypos2=2
divy=5
unity=1
x1=2.5653501e-08
x2=3.4879689e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out_p
out_n
\\"out_diff; out_p out_n -\\"

mux2_clk_p
mux2_clk_n
\\"clk_diff; mux2_clk_p mux2_clk_n -\\"

x6.net1"
color="4 5 6 12 8 9 10"
unitx=1
logx=0
logy=0
hilight_wave=2
autoload=1
sim_type=tran
rawfile=$netlist_dir/c4_type_8_to_1_tb.raw
rainbow=0
dataset=-1
subdivy=1
linewidth_mult=4}
B 2 2960 -7300 7750 -4920 {flags=graph
y1=-2.2
y2=2.2
ypos1=0
ypos2=2
divy=5
unity=1
x1=2.5653501e-08
x2=3.4879689e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"in0_diff; in0_p in0_n -\\"
\\"in1_diff; in1_p in1_n -\\"
\\"out_diff; out_p out_n -\\"


\\"clk_diff; mux2_clk_p mux2_clk_n -\\""
color="4 5 6 8"
unitx=1
logx=0
logy=0
hilight_wave=2
autoload=1
sim_type=tran
rawfile=$netlist_dir/c4_type_8_to_1_tb.raw
rainbow=0
dataset=-1
subdivy=1
linewidth_mult=4
}
B 2 2960 -9740 7750 -7360 {flags=graph
y1=-2.2
y2=2.2
ypos1=0
ypos2=2
divy=5
unity=1
x1=2.5653501e-08
x2=3.4879689e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"in0_pre_diff; clk_c16_1 clk_c16_3 -\\"
\\"in0_retimed_diff; in0_p in0_n -\\"
\\"in1_pre_diff; clk_c16_0 clk_c16_2 -\\"
\\"in1_retimed_diff; in1_p in1_n -\\"

\\"retiming_clk_diff; div4_clk_p div4_clk_n -\\""
color="4 5 6 8 12"
unitx=1
logx=0
logy=0
hilight_wave=2
autoload=1
sim_type=tran
rawfile=$netlist_dir/c4_type_8_to_1_tb.raw
rainbow=0
dataset=-1
subdivy=1
linewidth_mult=4
}
N -540 -500 -500 -500 {lab=VDD}
N 100 -500 140 -500 {lab=VDD}
N 100 -260 140 -260 {lab=0}
N -600 -460 -500 -460 {lab=#net1}
N -600 -480 -600 -460 {lab=#net1}
N 700 -680 700 -420 {lab=#net1}
N 580 -460 740 -460 {lab=#net2}
N -600 -680 700 -680 {lab=#net1}
N 620 -420 700 -420 {lab=#net1}
N 740 -720 740 -460 {lab=#net2}
N -640 -720 740 -720 {lab=#net2}
N -640 -720 -640 -420 {lab=#net2}
N -640 -420 -500 -420 {lab=#net2}
N -60 -460 140 -460 {lab=#net3}
N -20 -420 140 -420 {lab=#net4}
N -140 -340 -100 -340 {lab=clk_0}
N -140 -300 -100 -300 {lab=clk_2}
N 500 -340 540 -340 {lab=clk_1}
N 500 -300 540 -300 {lab=clk_3}
N -540 -340 -500 -340 {lab=vco_tail_bias}
N -540 -300 -500 -300 {lab=vco_takeoff_tail_bias}
N 100 -340 140 -340 {lab=vco_tail_bias}
N 100 -300 140 -300 {lab=vco_takeoff_tail_bias}
N -1260 -480 -1220 -480 {lab=vco_tail_bias}
N -1300 -480 -1260 -480 {lab=vco_tail_bias}
N -1300 -480 -1300 -430 {lab=vco_tail_bias}
N -1260 -480 -1260 -460 {lab=vco_tail_bias}
N -1260 -180 -1260 -140 {lab=0}
N -1260 -280 -1220 -280 {lab=vco_takeoff_tail_bias}
N -1300 -280 -1260 -280 {lab=vco_takeoff_tail_bias}
N -1300 -280 -1300 -230 {lab=vco_takeoff_tail_bias}
N -1260 -280 -1260 -260 {lab=vco_takeoff_tail_bias}
N -1360 -180 -1260 -180 {lab=0}
N -1360 -280 -1300 -280 {lab=vco_takeoff_tail_bias}
N -1360 -280 -1360 -260 {lab=vco_takeoff_tail_bias}
N -1360 -480 -1300 -480 {lab=vco_tail_bias}
N -1360 -480 -1360 -460 {lab=vco_tail_bias}
N -1360 -660 -1220 -660 {lab=VDD}
N -1360 -660 -1360 -640 {lab=VDD}
N -1360 -380 -1260 -380 {lab=0}
N -1260 -380 -1260 -340 {lab=0}
N -1260 -380 -1220 -380 {lab=0}
N -1220 -430 -1220 -380 {lab=0}
N -1260 -430 -1220 -430 {lab=0}
N -1260 -230 -1210 -230 {lab=0}
N -1210 -230 -1210 -180 {lab=0}
N -1260 -180 -1210 -180 {lab=0}
N -740 -420 -640 -420 {lab=#net2}
N -740 -480 -600 -480 {lab=#net1}
N -600 -680 -600 -480 {lab=#net1}
N -60 -100 -60 -20 {lab=0}
N 20 -100 20 -20 {lab=0}
N 20 -220 20 -160 {lab=#net4}
N -60 -460 -60 -160 {lab=#net3}
N -20 -220 20 -220 {lab=#net4}
N -20 -420 -20 -220 {lab=#net4}
N -1360 -400 -1360 -380 {lab=0}
N -1260 -400 -1260 -380 {lab=0}
N -1260 -200 -1260 -180 {lab=0}
N -1360 -200 -1360 -180 {lab=0}
N 580 -100 580 -20 {lab=0}
N 660 -100 660 -20 {lab=0}
N 660 -220 660 -160 {lab=#net1}
N 580 -460 580 -160 {lab=#net2}
N 620 -220 660 -220 {lab=#net1}
N 620 -420 620 -220 {lab=#net1}
N -140 -460 -60 -460 {lab=#net3}
N -140 -420 -20 -420 {lab=#net4}
N 500 -460 580 -460 {lab=#net2}
N 500 -420 620 -420 {lab=#net1}
N -1040 -670 -1000 -670 {lab=0}
N -1040 -530 -1000 -530 {lab=0}
N -1000 -670 -1000 -650 {lab=0}
N -1000 -600 -1000 -590 {lab=pfet_size_3}
N -1040 -670 -1040 -530 {lab=0}
N -1000 -600 -920 -600 {lab=pfet_size_3}
N -1000 -610 -1000 -600 {lab=pfet_size_3}
N -540 -260 -500 -260 {lab=0}
N -1360 -580 -1260 -580 {lab=0}
N -1260 -580 -1260 -540 {lab=0}
N -560 -1100 -520 -1100 {lab=0}
N -560 -1340 -520 -1340 {lab=VDD}
N 80 -1340 120 -1340 {lab=VDD}
N 80 -1100 120 -1100 {lab=0}
N -620 -1300 -520 -1300 {lab=#net5}
N -620 -1320 -620 -1300 {lab=#net5}
N -660 -1260 -520 -1260 {lab=#net6}
N -160 -1180 -120 -1180 {lab=div2_clk_p}
N -160 -1140 -120 -1140 {lab=div2_clk_n}
N 480 -1180 520 -1180 {lab=div2_clk_n}
N 480 -1140 520 -1140 {lab=div2_clk_p}
N -560 -1180 -520 -1180 {lab=div2_tail_bias}
N 80 -1180 120 -1180 {lab=div2_tail_bias}
N -1280 -1320 -1240 -1320 {lab=div2_tail_bias}
N -1320 -1320 -1280 -1320 {lab=div2_tail_bias}
N -1320 -1320 -1320 -1270 {lab=div2_tail_bias}
N -1280 -1320 -1280 -1300 {lab=div2_tail_bias}
N -1380 -1320 -1320 -1320 {lab=div2_tail_bias}
N -1380 -1320 -1380 -1300 {lab=div2_tail_bias}
N -1380 -1220 -1280 -1220 {lab=0}
N -1280 -1220 -1280 -1180 {lab=0}
N -1280 -1220 -1240 -1220 {lab=0}
N -1240 -1270 -1240 -1220 {lab=0}
N -1280 -1270 -1240 -1270 {lab=0}
N -760 -1260 -660 -1260 {lab=#net6}
N -760 -1320 -620 -1320 {lab=#net5}
N -1380 -1240 -1380 -1220 {lab=0}
N -1280 -1240 -1280 -1220 {lab=0}
N 480 -1300 720 -1300 {lab=#net7}
N 480 -1260 680 -1260 {lab=#net8}
N -1130 -920 -1130 -900 {lab=div2_common_mode}
N -1130 -1120 -1130 -1100 {lab=div2_common_mode}
N -1280 -1080 -1280 -1060 {lab=div2_common_mode}
N -1280 -1000 -1280 -980 {lab=0}
N 80 -2100 120 -2100 {lab=0}
N 80 -2340 120 -2340 {lab=VDD}
N 80 -2180 120 -2180 {lab=clk_buf_tail_bias}
N -1143.305878170165 -2140 -1103.305878170165 -2140 {lab=clk_buf_tail_bias}
N -1183.305878170165 -2140 -1143.305878170165 -2140 {lab=clk_buf_tail_bias}
N -1183.305878170165 -2140 -1183.305878170165 -2090 {lab=clk_buf_tail_bias}
N -1143.305878170165 -2140 -1143.305878170165 -2120 {lab=clk_buf_tail_bias}
N -1243.305878170165 -2140 -1183.305878170165 -2140 {lab=clk_buf_tail_bias}
N -1243.305878170165 -2140 -1243.305878170165 -2120 {lab=clk_buf_tail_bias}
N -1243.305878170165 -2040 -1143.305878170165 -2040 {lab=0}
N -1143.305878170165 -2040 -1143.305878170165 -2000 {lab=0}
N -1143.305878170165 -2040 -1103.305878170165 -2040 {lab=0}
N -1103.305878170165 -2090 -1103.305878170165 -2040 {lab=0}
N -1143.305878170165 -2090 -1103.305878170165 -2090 {lab=0}
N -1243.305878170165 -2060 -1243.305878170165 -2040 {lab=0}
N -1143.305878170165 -2060 -1143.305878170165 -2040 {lab=0}
N 480 -2300 520 -2300 {lab=#net9}
N 480 -2260 520 -2260 {lab=#net10}
N -40 -2260 120 -2260 {lab=#net11}
N -40 -2300 120 -2300 {lab=#net12}
N -1141.691137783629 -2340 -1101.691137783629 -2340 {lab=clk_buf_neg_tail_bias}
N -1181.691137783629 -2340 -1141.691137783629 -2340 {lab=clk_buf_neg_tail_bias}
N -1181.691137783629 -2340 -1181.691137783629 -2290 {lab=clk_buf_neg_tail_bias}
N -1141.691137783629 -2340 -1141.691137783629 -2320 {lab=clk_buf_neg_tail_bias}
N -1241.691137783629 -2340 -1181.691137783629 -2340 {lab=clk_buf_neg_tail_bias}
N -1241.691137783629 -2340 -1241.691137783629 -2320 {lab=clk_buf_neg_tail_bias}
N -1241.691137783629 -2240 -1141.691137783629 -2240 {lab=0}
N -1141.691137783629 -2240 -1141.691137783629 -2200 {lab=0}
N -1141.691137783629 -2240 -1101.691137783629 -2240 {lab=0}
N -1101.691137783629 -2290 -1101.691137783629 -2240 {lab=0}
N -1141.691137783629 -2290 -1101.691137783629 -2290 {lab=0}
N -1241.691137783629 -2260 -1241.691137783629 -2240 {lab=0}
N -1141.691137783629 -2260 -1141.691137783629 -2240 {lab=0}
N 80 -2140 120 -2140 {lab=clk_buf_neg_tail_bias}
N 80 -2680 120 -2680 {lab=0}
N 80 -2920 120 -2920 {lab=VDD}
N 480 -2760 520 -2760 {lab=mux2_clk_p}
N 480 -2720 520 -2720 {lab=mux2_clk_n}
N 80 -2720 120 -2720 {lab=mux2_tail_bias}
N -640 -2900 -600 -2900 {lab=mux2_tail_bias}
N -680 -2900 -640 -2900 {lab=mux2_tail_bias}
N -680 -2900 -680 -2850 {lab=mux2_tail_bias}
N -640 -2900 -640 -2880 {lab=mux2_tail_bias}
N -740 -2900 -680 -2900 {lab=mux2_tail_bias}
N -740 -2900 -740 -2880 {lab=mux2_tail_bias}
N -740 -2800 -640 -2800 {lab=0}
N -640 -2800 -640 -2760 {lab=0}
N -640 -2800 -600 -2800 {lab=0}
N -600 -2850 -600 -2800 {lab=0}
N -640 -2850 -600 -2850 {lab=0}
N -740 -2820 -740 -2800 {lab=0}
N -640 -2820 -640 -2800 {lab=0}
N 640 -2880 760 -2880 {lab=out_p}
N 640 -2840 720 -2840 {lab=out_n}
N -590 -2500 -590 -2480 {lab=mux2_common_mode}
N -590 -2700 -590 -2680 {lab=mux2_common_mode}
N -740 -2660 -740 -2640 {lab=mux2_common_mode}
N -740 -2580 -740 -2560 {lab=0}
N 720 -3080 720 -2840 {lab=out_n}
N 760 -3220 760 -2880 {lab=out_p}
N -400 -2500 -400 -2480 {lab=mux2_common_mode}
N -400 -2700 -400 -2680 {lab=mux2_common_mode}
N -180 -2500 -180 -2480 {lab=mux2_common_mode}
N -180 -2700 -180 -2680 {lab=mux2_common_mode}
N 640 -2840 640 -2800 {lab=out_n}
N 480 -2840 640 -2840 {lab=out_n}
N 640 -2920 640 -2880 {lab=out_p}
N 480 -2880 640 -2880 {lab=out_p}
N 1770 -1180 1810 -1180 {lab=0}
N 1770 -1420 1810 -1420 {lab=VDD}
N 1770 -1260 1810 -1260 {lab=clk_buf_tail_bias}
N 2170 -1380 2370 -1380 {lab=#net13}
N 2170 -1340 2370 -1340 {lab=#net14}
N 1650 -1340 1810 -1340 {lab=clk_2}
N 1650 -1380 1810 -1380 {lab=clk_0}
N 1770 -1220 1810 -1220 {lab=clk_buf_neg_tail_bias}
N 2330 -1180 2370 -1180 {lab=0}
N 2330 -1420 2370 -1420 {lab=VDD}
N 2330 -1260 2370 -1260 {lab=clk_buf_tail_bias}
N 2730 -1380 2820 -1380 {lab=clk_0_s}
N 2730 -1340 2820 -1340 {lab=clk_2_s}
N 2330 -1220 2370 -1220 {lab=clk_buf_neg_tail_bias}
N 1770 -800 1810 -800 {lab=0}
N 1770 -1040 1810 -1040 {lab=VDD}
N 1770 -880 1810 -880 {lab=clk_buf_tail_bias}
N 2170 -1000 2370 -1000 {lab=#net15}
N 2170 -960 2370 -960 {lab=#net16}
N 1650 -960 1810 -960 {lab=clk_3}
N 1650 -1000 1810 -1000 {lab=clk_1}
N 1770 -840 1810 -840 {lab=clk_buf_neg_tail_bias}
N 2330 -800 2370 -800 {lab=0}
N 2330 -1040 2370 -1040 {lab=VDD}
N 2330 -880 2370 -880 {lab=clk_buf_tail_bias}
N 2730 -1000 2820 -1000 {lab=clk_1_s}
N 2730 -960 2820 -960 {lab=clk_3_s}
N 2330 -840 2370 -840 {lab=clk_buf_neg_tail_bias}
N -850 -1040 -760 -1040 {lab=clk_0_s}
N -850 -980 -760 -980 {lab=clk_2_s}
N -1000 -980 -910 -980 {lab=div2_clk_n}
N -1000 -1040 -910 -1040 {lab=div2_clk_p}
N -180 -1740 -140 -1740 {lab=0}
N -180 -1980 -140 -1980 {lab=VDD}
N -180 -1820 -140 -1820 {lab=clk_buf_tail_bias}
N -180 -1900 680 -1900 {lab=#net8}
N -180 -1940 720 -1940 {lab=#net7}
N -180 -1780 -140 -1780 {lab=clk_buf_neg_tail_bias}
N -660 -1940 -660 -1260 {lab=#net6}
N -620 -1900 -620 -1320 {lab=#net5}
N -620 -1900 -540 -1900 {lab=#net5}
N -660 -1940 -540 -1940 {lab=#net6}
N 720 -1940 720 -1300 {lab=#net7}
N 680 -1900 680 -1260 {lab=#net8}
N 80 -1520 120 -1520 {lab=0}
N 80 -1760 120 -1760 {lab=VDD}
N 80 -1600 120 -1600 {lab=clk_buf_tail_bias}
N 80 -1560 120 -1560 {lab=clk_buf_neg_tail_bias}
N -120 -1720 -120 -1300 {lab=#net17}
N -120 -1720 120 -1720 {lab=#net17}
N -160 -1300 -120 -1300 {lab=#net17}
N -80 -1680 -80 -1260 {lab=#net18}
N -80 -1680 120 -1680 {lab=#net18}
N -160 -1260 -80 -1260 {lab=#net18}
N -20 -1440 520 -1440 {lab=clk_c8_2}
N -20 -1440 -20 -1260 {lab=clk_c8_2}
N -20 -1260 120 -1260 {lab=clk_c8_2}
N 20 -1300 120 -1300 {lab=clk_c8_0}
N 20 -1400 20 -1300 {lab=clk_c8_0}
N 20 -1400 560 -1400 {lab=clk_c8_0}
N 560 -1720 560 -1400 {lab=clk_c8_0}
N 520 -1680 520 -1440 {lab=clk_c8_2}
N 480 -1680 520 -1680 {lab=clk_c8_2}
N 1770 -2680 1810 -2680 {lab=0}
N 1770 -2920 1810 -2920 {lab=VDD}
N 1770 -2760 1810 -2760 {lab=clk_buf_tail_bias}
N 1650 -2840 1810 -2840 {lab=clk_c8_2}
N 1650 -2880 1810 -2880 {lab=clk_c8_0}
N 1770 -2720 1810 -2720 {lab=clk_buf_neg_tail_bias}
N 560 -1720 850 -1720 {lab=clk_c8_0}
N 480 -1720 560 -1720 {lab=clk_c8_0}
N 520 -1680 850 -1680 {lab=clk_c8_2}
N -560 -3410 -520 -3410 {lab=0}
N -560 -3650 -520 -3650 {lab=VDD}
N 80 -3650 120 -3650 {lab=VDD}
N 80 -3410 120 -3410 {lab=0}
N -620 -3610 -520 -3610 {lab=clk_c16_3}
N -620 -3630 -620 -3610 {lab=clk_c16_3}
N -660 -3570 -520 -3570 {lab=clk_c16_1}
N -160 -3490 -120 -3490 {lab=div4_clk_p}
N -160 -3450 -120 -3450 {lab=div4_clk_n}
N 480 -3490 520 -3490 {lab=div4_clk_n}
N 480 -3450 520 -3450 {lab=div4_clk_p}
N -560 -3490 -520 -3490 {lab=div2_tail_bias}
N 80 -3490 120 -3490 {lab=div2_tail_bias}
N -760 -3570 -660 -3570 {lab=clk_c16_1}
N -760 -3630 -620 -3630 {lab=clk_c16_3}
N 480 -3610 720 -3610 {lab=#net19}
N 480 -3570 680 -3570 {lab=#net20}
N -180 -4050 -140 -4050 {lab=0}
N -180 -4290 -140 -4290 {lab=VDD}
N -180 -4130 -140 -4130 {lab=clk_buf_tail_bias}
N -180 -4210 680 -4210 {lab=#net20}
N -180 -4250 720 -4250 {lab=#net19}
N -180 -4090 -140 -4090 {lab=clk_buf_neg_tail_bias}
N -660 -4250 -660 -3570 {lab=clk_c16_1}
N -620 -4210 -620 -3630 {lab=clk_c16_3}
N -620 -4210 -540 -4210 {lab=clk_c16_3}
N 720 -4250 720 -3610 {lab=#net19}
N 680 -4210 680 -3570 {lab=#net20}
N 80 -3830 120 -3830 {lab=0}
N 80 -4070 120 -4070 {lab=VDD}
N 80 -3910 120 -3910 {lab=clk_buf_tail_bias}
N 80 -3870 120 -3870 {lab=clk_buf_neg_tail_bias}
N -120 -4030 -120 -3610 {lab=#net21}
N -120 -4030 120 -4030 {lab=#net21}
N -160 -3610 -120 -3610 {lab=#net21}
N -80 -3990 -80 -3570 {lab=#net22}
N -80 -3990 120 -3990 {lab=#net22}
N -160 -3570 -80 -3570 {lab=#net22}
N -20 -3750 520 -3750 {lab=clk_c16_2}
N -20 -3750 -20 -3570 {lab=clk_c16_2}
N -20 -3570 120 -3570 {lab=clk_c16_2}
N 20 -3610 120 -3610 {lab=clk_c16_0}
N 20 -3710 20 -3610 {lab=clk_c16_0}
N 20 -3710 560 -3710 {lab=clk_c16_0}
N 560 -4030 560 -3710 {lab=clk_c16_0}
N 520 -3990 520 -3750 {lab=clk_c16_2}
N 480 -3990 520 -3990 {lab=clk_c16_2}
N 480 -4030 560 -4030 {lab=clk_c16_0}
N -850 -3350 -760 -3350 {lab=clk_c8_0_s}
N -850 -3290 -760 -3290 {lab=clk_c8_2_s}
N -1000 -3290 -910 -3290 {lab=div4_clk_n}
N -1000 -3350 -910 -3350 {lab=div4_clk_p}
N -180 -2880 -140 -2880 {lab=clk_c16_1_retimed}
N -180 -2840 -140 -2840 {lab=clk_c16_3_retimed}
N -180 -2800 -140 -2800 {lab=clk_c16_0_retimed}
N -180 -2760 -140 -2760 {lab=clk_c16_2_retimed}
N -80 -2760 120 -2760 {lab=in1_n}
N -80 -2800 120 -2800 {lab=in1_p}
N -80 -2840 120 -2840 {lab=in0_n}
N -80 -2880 120 -2880 {lab=in0_p}
N 2330 -2680 2370 -2680 {lab=0}
N 2330 -2920 2370 -2920 {lab=VDD}
N 2330 -2760 2370 -2760 {lab=clk_buf_tail_bias}
N 2330 -2720 2370 -2720 {lab=clk_buf_neg_tail_bias}
N 2730 -2880 2810 -2880 {lab=mux2_clk_p}
N 2730 -2840 2810 -2840 {lab=mux2_clk_n}
N 2170 -2880 2370 -2880 {lab=clk_c8_0_s}
N 2170 -2840 2370 -2840 {lab=clk_c8_2_s}
N 900 -4070 940 -4070 {lab=VDD}
N 900 -3830 940 -3830 {lab=0}
N 1300 -3910 1340 -3910 {lab=div4_clk_n}
N 1300 -3870 1340 -3870 {lab=div4_clk_p}
N 900 -3910 940 -3910 {lab=div2_tail_bias}
N 1300 -4030 1540 -4030 {lab=clk_c16_0_retimed}
N 1300 -3990 1500 -3990 {lab=clk_c16_2_retimed}
N 560 -4030 940 -4030 {lab=clk_c16_0}
N 520 -3990 940 -3990 {lab=clk_c16_2}
N -850 -4050 -810 -4050 {lab=0}
N -850 -4290 -810 -4290 {lab=VDD}
N -1250 -4130 -1210 -4130 {lab=div4_clk_p}
N -1250 -4090 -1210 -4090 {lab=div4_clk_n}
N -850 -4130 -810 -4130 {lab=div2_tail_bias}
N -1250 -4250 -1210 -4250 {lab=clk_c16_1_retimed}
N -660 -4250 -540 -4250 {lab=clk_c16_1}
N -850 -4250 -660 -4250 {lab=clk_c16_1}
N -850 -4210 -620 -4210 {lab=clk_c16_3}
N -1250 -4210 -1210 -4210 {lab=clk_c16_3_retimed}
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value="
**.include $::180MCU_MODELS/design.ngspice
**.lib $::180MCU_MODELS/sm141064.ngspice typical
**.lib $::180MCU_MODELS/sm141064.ngspice res_typical

* Xyce-only:
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical


*.option savecurrents

.param vco_fwd_w=6u
.param vco_pf_S=1.5
.param vco_pf_ratio='1/vco_pf_S'
.param vco_fwd_fingers=2
.param vco_pf_fingers=1
.param vco_tail_fingers=6
.param vco_takeoff_tail_fingers=1
.param vco_takeoff_ratio=0.1
.param vco_takeoff_fingers=1
.param vco_tail_ratio=5
.param vco_tail_l=1u
.param vco_takeoff_tail_ratio=5
.param vco_takeoff_tail_l=1u
.param vco_load_w=1u
.param vco_load_r=4k
.param vco_load_l='vco_load_r/1000 * vco_load_w'
.param vco_load_pfet_w=0.22u
.param vco_load_pfet_l=0.7u
.param vco_load_pfet_scale_base=2.0
.param vco_takeoff_load_adjust=1
.param vco_takeoff_load_w=1u
.param vco_takeoff_load_r='(vco_load_r / vco_takeoff_ratio) * vco_takeoff_load_adjust'
.param vco_takeoff_load_l='vco_takeoff_load_r/1000 * vco_takeoff_load_w'
.param vco_takeoff_tail_adjust=1
.param vco_tail_current=512u

.param vco_load_pfet_code='26'
.param vco_load_pfet_bit_0='vco_load_pfet_code % 2'
.param vco_load_pfet_bit_1='int(vco_load_pfet_code / 2) % 2'
.param vco_load_pfet_bit_2='int(vco_load_pfet_code / 4) % 2'
.param vco_load_pfet_bit_3='int(vco_load_pfet_code / 8) % 2'
.param vco_load_pfet_bit_4='int(vco_load_pfet_code / 16) % 2'

*.print \{vco_load_pfet_w * (vco_load_pfet_scale_base**4)\}
* PSS analysis unavailable in the normally distributed/available ngspice version/build, at least for now, so don't use it!
*.pss gfreq tstab oscnob psspoints harms sciter=50 steadycoeff=1e-3 <uic>
*.param harms=20
*.pss 1G 5n clk_0 5*harms 20
* looks like params there might not work? Let's expand manually:
*.pss 1G 5n clk_0 100 20


*Xyce-only:
.TRAN 100p 50n
.MEASURE TRAN output_freq FREQ V(clk_0, clk_2) TD=20n
.RESULT \{output_freq\}
.MEASURE TRAN vco_load_pfet_code EQN\{vco_load_pfet_code\}
.RESULT \{vco_load_pfet_code\}
*.MEASURE TRAN vco_tail_current EQN\{vco_tail_current\}
.MEASURE TRAN latch_tail_current EQN\{latch_tail_current\}
.RESULT \{latch_tail_current\}
.PRINT TRAN FORMAT=raw file=c4_type_8_to_1_tb.raw v(*) i(*)

.MEASURE TRAN mux2_clk_freq_is_ddr FREQ V(mux2_clk_p, mux2_clk_n) TD=20n
.RESULT \{mux2_clk_freq_is_ddr\}

* First we test a very condensed run, before we put the effort in for the full large one.
*.STEP OCT vco_tail_current 64u 256u 3
*.STEP vco_load_pfet_code 1 10 3

*.STEP OCT vco_tail_current 4u 1024u 3
*.STEP vco_load_pfet_code 1 31 1

* Let's sweep codes for coarse frequency and latch current
* for maybe finding how fast this particular latch config
* (with the inline buffers) can divide
.STEP OCT latch_tail_current 64u 256u 1
.STEP vco_load_pfet_code 0 18 1


**.control
**save all
*save sub
*save internals
*show
*op
*run
**tran 5p 50n
**plot v(clk_0) v(clk_1) v(clk_2) v(clk_3)
**plot net1 net2 net3 net4 x1.net1
**write vco_core_tb.raw all
**.endc
"}
C {vco_core_segment.sym} -320 -380 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -1280 -430 0 0 {name=M1
L="'vco_tail_l'"
W="'vco_fwd_w * (1 + vco_pf_ratio) * vco_tail_ratio'"
nf="'vco_tail_fingers'"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {vco_core_segment.sym} 320 -380 0 0 {name=x2}
C {symbols/nfet_03v3.sym} -1280 -230 0 0 {name=M2
L="'vco_takeoff_tail_l'"
W="'vco_fwd_w * (1 + vco_pf_ratio) * vco_tail_ratio * vco_takeoff_ratio'"
nf="'vco_takeoff_tail_fingers'"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} -540 -500 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 100 -500 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -100 -340 0 1 {name=p5 sig_type=std_logic lab=clk_0}
C {lab_wire.sym} -100 -300 0 1 {name=p6 sig_type=std_logic lab=clk_2}
C {lab_wire.sym} 540 -340 0 1 {name=p7 sig_type=std_logic lab=clk_1}
C {lab_wire.sym} 540 -300 0 1 {name=p8 sig_type=std_logic lab=clk_3}
C {lab_wire.sym} -540 -340 0 0 {name=p9 sig_type=std_logic lab="vco_tail_bias"}
C {lab_wire.sym} -540 -300 0 0 {name=p10 sig_type=std_logic lab="vco_takeoff_tail_bias"}
C {lab_wire.sym} 100 -340 0 0 {name=p11 sig_type=std_logic lab="vco_tail_bias"}
C {lab_wire.sym} 100 -300 0 0 {name=p12 sig_type=std_logic lab="vco_takeoff_tail_bias"}
C {lab_wire.sym} -1220 -480 0 1 {name=p13 sig_type=std_logic lab="vco_tail_bias"}
C {lab_wire.sym} -1220 -280 0 1 {name=p16 sig_type=std_logic lab="vco_takeoff_tail_bias"}
C {vsource.sym} -1360 -610 0 1 {name=V1 value=3.3 savecurrent=false}
C {isource.sym} -1360 -430 2 0 {name=I0 value="'vco_tail_current'"}
C {isource.sym} -1360 -230 2 0 {name=I1 value="'vco_tail_current * vco_takeoff_ratio * vco_takeoff_tail_adjust'"}
C {lab_wire.sym} -1220 -660 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {isource.sym} -740 -450 0 0 {name=I2 value="PULSE(0 5u 1n 20p 20p 80p 0 1)"}
C {res.sym} -60 -130 0 0 {name=R1
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} -60 -20 0 0 {name=l2 lab=0}
C {res.sym} 20 -130 0 0 {name=R2
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} 20 -20 0 0 {name=l3 lab=0}
C {gnd.sym} -1260 -540 0 0 {name=l1 lab=0}
C {gnd.sym} -1260 -340 0 0 {name=l4 lab=0}
C {gnd.sym} -1260 -140 0 0 {name=l5 lab=0}
C {gnd.sym} -540 -260 0 0 {name=l6 lab=0}
C {gnd.sym} 100 -260 0 0 {name=l7 lab=0}
C {res.sym} 580 -130 0 0 {name=R3
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} 580 -20 0 0 {name=l8 lab=0}
C {res.sym} 660 -130 0 0 {name=R4
value=1G
footprint=1206
device=resistor
m=1}
C {gnd.sym} 660 -20 0 0 {name=l9 lab=0}
C {vsource.sym} -1000 -560 0 0 {name=V4 value="\{vco_load_pfet_w * (vco_load_pfet_scale_base^3)\}"}
C {res.sym} -1000 -640 0 0 {name=R5
value=1
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} -920 -600 0 1 {name=p3 sig_type=std_logic lab=pfet_size_3}
C {gnd.sym} -1000 -530 0 0 {name=l10 lab=0}
C {code_shown.sym} 805 -1425 0 0 {name=NGSPICE1 only_toplevel=true format="tcleval( @value )" value="
.param latch_fwd_w=2u
.param latch_pf_ratio=\{1\}
.param latch_fwd_fingers=1
.param latch_pf_fingers=1
.param latch_tail_fingers=5
.param latch_clk_ratio=0.5
.param latch_clk_fingers=1
.param latch_tail_ratio=5
.param latch_tail_l=1u
.param latch_load_w=1u
.param latch_load_r=12k
.param latch_load_l=\{latch_load_r/1000 * latch_load_w\}
.param latch_tail_current=64u
"}
C {latch_fast.sym} -340 -1220 0 0 {name=x3}
C {symbols/nfet_03v3.sym} -1300 -1270 0 0 {name=M3
L="\{latch_tail_l\}"
W="\{latch_fwd_w * (1 + latch_pf_ratio) * latch_tail_ratio\}"
nf="\{latch_tail_fingers\}"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {latch_fast.sym} 300 -1220 0 0 {name=x4}
C {lab_wire.sym} -560 -1340 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -1340 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -120 -1180 0 1 {name=p15 sig_type=std_logic lab=div2_clk_p}
C {lab_wire.sym} -120 -1140 0 1 {name=p17 sig_type=std_logic lab=div2_clk_n}
C {lab_wire.sym} 520 -1180 0 1 {name=p19 sig_type=std_logic lab=div2_clk_n}
C {lab_wire.sym} 520 -1140 0 1 {name=p20 sig_type=std_logic lab=div2_clk_p}
C {lab_wire.sym} -560 -1180 0 0 {name=p21 sig_type=std_logic lab=div2_tail_bias}
C {lab_wire.sym} 80 -1180 0 0 {name=p22 sig_type=std_logic lab=div2_tail_bias}
C {lab_wire.sym} -1240 -1320 0 1 {name=p23 sig_type=std_logic lab=div2_tail_bias}
C {isource.sym} -1380 -1270 2 0 {name=I3 value="'latch_tail_current'"}
C {isource.sym} -760 -1290 0 0 {name=I4 value="PULSE(0 0u 1n 20p 20p 80p 0 1)"}
C {gnd.sym} -1280 -1180 0 0 {name=l13 lab=0}
C {gnd.sym} -560 -1100 0 0 {name=l14 lab=0}
C {gnd.sym} 80 -1100 0 0 {name=l15 lab=0}
C {vsource.sym} -1130 -950 0 0 {name=V2 value="SIN(0 0.2 2.5G 0 0 90)"}
C {vsource.sym} -1130 -1070 2 1 {name=V5 value="SIN(0 0.2 2.5G 0 0 270)"}
C {lab_wire.sym} -1130 -1120 0 1 {name=p24 sig_type=std_logic lab=div2_common_mode}
C {lab_wire.sym} -1130 -900 2 0 {name=p25 sig_type=std_logic lab=div2_common_mode}
C {lab_wire.sym} -1000 -1040 0 1 {name=p26 sig_type=std_logic lab=div2_clk_p}
C {lab_wire.sym} -1000 -980 0 1 {name=p27 sig_type=std_logic lab=div2_clk_n}
C {vsource.sym} -1280 -1030 0 1 {name=V3 value=2.5 savecurrent=false}
C {lab_wire.sym} -1280 -1080 0 1 {name=p28 sig_type=std_logic lab=div2_common_mode}
C {gnd.sym} -1280 -980 0 0 {name=l18 lab=0}
C {clk_buf.sym} 300 -2220 0 0 {name=x5}
C {symbols/nfet_03v3.sym} -1163.305878170165 -2090 0 0 {name=M4
L="'clk_buf_tail_l'"
W="'clk_buf_fwd_w * clk_buf_tail_ratio'"
nf="'clk_buf_tail_fingers'"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 80 -2340 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -2180 0 0 {name=p30 sig_type=std_logic lab=clk_buf_tail_bias}
C {lab_wire.sym} -1103.305878170165 -2140 0 1 {name=p31 sig_type=std_logic lab=clk_buf_tail_bias}
C {isource.sym} -1243.305878170165 -2090 2 0 {name=I5 value="'clk_buf_tail_current'"}
C {gnd.sym} -1143.305878170165 -2000 0 0 {name=l19 lab=0}
C {gnd.sym} 80 -2100 0 0 {name=l20 lab=0}
C {symbols/nfet_03v3.sym} -1161.691137783629 -2290 0 0 {name=M5
L="'clk_buf_tail_l'"
W="'clk_buf_neg_w * clk_buf_neg_tail_ratio'"
nf="'clk_buf_tail_fingers'"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} -1101.691137783629 -2340 0 1 {name=p32 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {isource.sym} -1241.691137783629 -2290 2 0 {name=I6 value="'clk_buf_tail_current * clk_buf_neg_ratio * clk_buf_neg_tail_adjust'"}
C {gnd.sym} -1141.691137783629 -2200 0 0 {name=l21 lab=0
W="'clk_buf_neg_w * clk_buf_neg_tail_ratio'"}
C {lab_wire.sym} 80 -2140 0 0 {name=p33 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {code_shown.sym} 805 -2455 0 0 {name="NGSPICE2" only_toplevel="true" format="tcleval( @value )" value="
.param clk_buf_fwd_w=16u
.param clk_buf_fwd_fingers=2
.param clk_buf_in_out_ratio=0.55
.param clk_buf_tail_fingers=4
.param clk_buf_tail_ratio=4
.param clk_buf_tail_l=1u
.param clk_buf_load_w=2u
.param clk_buf_load_r=4k
.param clk_buf_load_l='clk_buf_load_r/1000 * clk_buf_load_w'
.param clk_buf_neg_ratio=0.155
.param clk_buf_neg_w='clk_buf_fwd_w * clk_buf_neg_ratio'
.param clk_buf_neg_fingers=1
.param clk_buf_neg_tail_ratio=5
.param clk_buf_neg_tail_adjust=1.5
.param clk_buf_tail_current=512u

.param clk_buf_tb_fan_out=1.78039
.param clk_buf_tb_freq=2.5G"}
C {code_shown.sym} 805 -3168.704612879492 0 0 {name="NGSPICE3" only_toplevel="true" format="tcleval( @value )" value="
.param mux_fwd_w=4u
.param mux_fwd_fingers=1
.param mux_tail_fingers=5
.param mux_sel_ratio=0.5
.param mux_sel_fingers=1
.param mux_tail_ratio=5
.param mux_tail_l=1u
.param mux_load_w=1u
.param mux_load_r=12k
.param mux_load_l='mux_load_r/1000 * mux_load_w'
.param din_amplitude=0.4
.param mux_tail_current=128u"}
C {mux2_bottom_up.sym} 300 -2800 0 0 {name=x6}
C {symbols/nfet_03v3.sym} -660 -2850 0 0 {name=M6
L="'mux_tail_l'"
W="'mux_fwd_w * mux_tail_ratio'"
nf="'mux_tail_fingers'"
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 80 -2920 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 520 -2760 0 1 {name=p35 sig_type=std_logic lab=mux2_clk_p}
C {lab_wire.sym} 520 -2720 0 1 {name=p36 sig_type=std_logic lab=mux2_clk_n}
C {lab_wire.sym} 80 -2720 0 0 {name=p37 sig_type=std_logic lab=mux2_tail_bias}
C {lab_wire.sym} -600 -2900 0 1 {name=p38 sig_type=std_logic lab=mux2_tail_bias}
C {isource.sym} -740 -2850 2 0 {name=I7 value="'mux_tail_current'"}
C {gnd.sym} -640 -2760 0 0 {name=l22 lab=0}
C {gnd.sym} 80 -2680 0 0 {name=l23 lab=0}
C {vsource.sym} -590 -2530 0 0 {name=V6 value="SIN(0 0.4 2.5G 0 0 90)"}
C {vsource.sym} -590 -2650 2 1 {name=V7 value="SIN(0 0.4 2.5G 0 0 270)"}
C {lab_wire.sym} -590 -2700 0 1 {name=p39 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -590 -2480 2 0 {name=p40 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -520 -2620 0 1 {name=p41 sig_type=std_logic lab=mux2_clk_p}
C {lab_wire.sym} -520 -2560 0 1 {name=p42 sig_type=std_logic lab=mux2_clk_n}
C {vsource.sym} -740 -2610 0 1 {name=V8 value=2.5 savecurrent=false}
C {lab_wire.sym} -740 -2660 0 1 {name=p43 sig_type=std_logic lab=mux2_common_mode}
C {gnd.sym} -740 -2560 0 0 {name=l24 lab=0}
C {vsource.sym} -400 -2530 0 0 {name=V9 value="SIN(0 \{din_amplitude\} 0.9G 0 0 0)"}
C {vsource.sym} -400 -2650 2 1 {name="V10" value="SIN(0 \{din_amplitude\} 0.9G 0 0 180)"}
C {lab_wire.sym} -400 -2700 0 1 {name=p44 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -400 -2480 2 0 {name=p45 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -330 -2620 0 1 {name=p46 sig_type=std_logic lab=in0_p}
C {lab_wire.sym} -330 -2560 0 1 {name=p47 sig_type=std_logic lab=in0_n}
C {vsource.sym} -180 -2530 0 0 {name=V11 value="SIN(0 \{din_amplitude\} 0.9G 0 0 90)"}
C {vsource.sym} -180 -2650 2 1 {name=V12 value="SIN(0 \{din_amplitude\} 0.9G 0 0 270)"}
C {lab_wire.sym} -180 -2700 0 1 {name=p48 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -180 -2480 2 0 {name=p49 sig_type=std_logic lab=mux2_common_mode}
C {lab_wire.sym} -110 -2620 0 1 {name=p50 sig_type=std_logic lab=in1_p}
C {lab_wire.sym} -110 -2560 0 1 {name=p51 sig_type=std_logic lab=in1_n}
C {lab_wire.sym} 80 -2880 0 0 {name=p52 sig_type=std_logic lab=in0_p}
C {lab_wire.sym} 80 -2840 0 0 {name=p53 sig_type=std_logic lab=in0_n}
C {lab_wire.sym} 80 -2800 0 0 {name=p54 sig_type=std_logic lab=in1_p}
C {lab_wire.sym} 80 -2760 0 0 {name=p55 sig_type=std_logic lab=in1_n}
C {lab_wire.sym} 640 -2920 0 1 {name=p56 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 640 -2800 0 1 {name=p57 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 1650 -1380 0 0 {name=p58 sig_type=std_logic lab=clk_0}
C {lab_wire.sym} 1650 -1340 0 0 {name=p59 sig_type=std_logic lab=clk_2}
C {clk_buf.sym} 1990 -1300 0 0 {name=x9}
C {lab_wire.sym} 1770 -1420 0 0 {name=p60 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1770 -1260 0 0 {name=p61 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 1770 -1180 0 0 {name=l25 lab=0}
C {lab_wire.sym} 1770 -1220 0 0 {name=p62 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 2550 -1300 0 0 {name=x10}
C {lab_wire.sym} 2330 -1420 0 0 {name=p63 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2330 -1260 0 0 {name=p64 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 2330 -1180 0 0 {name=l26 lab=0}
C {lab_wire.sym} 2330 -1220 0 0 {name=p65 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 1990 -920 0 0 {name=x11}
C {lab_wire.sym} 1770 -1040 0 0 {name=p66 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1770 -880 0 0 {name=p67 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 1770 -800 0 0 {name=l27 lab=0}
C {lab_wire.sym} 1770 -840 0 0 {name=p68 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 2550 -920 0 0 {name=x12}
C {lab_wire.sym} 2330 -1040 0 0 {name=p69 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2330 -880 0 0 {name=p70 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 2330 -800 0 0 {name=l28 lab=0}
C {lab_wire.sym} 2330 -840 0 0 {name=p71 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {lab_wire.sym} 1650 -1000 0 0 {name=p72 sig_type=std_logic lab=clk_1}
C {lab_wire.sym} 1650 -960 0 0 {name=p73 sig_type=std_logic lab=clk_3}
C {lab_wire.sym} 2820 -1380 0 1 {name=p74 sig_type=std_logic lab=clk_0_s}
C {lab_wire.sym} 2820 -1340 0 1 {name=p75 sig_type=std_logic lab=clk_2_s}
C {lab_wire.sym} 2820 -1000 0 1 {name=p76 sig_type=std_logic lab=clk_1_s}
C {lab_wire.sym} 2820 -960 0 1 {name=p77 sig_type=std_logic lab=clk_3_s}
C {lab_wire.sym} -760 -1040 0 1 {name=p78 sig_type=std_logic lab=clk_0_s}
C {lab_wire.sym} -760 -980 0 1 {name=p79 sig_type=std_logic lab=clk_2_s}
C {clk_buf.sym} -360 -1860 0 1 {name=x13}
C {lab_wire.sym} -140 -1980 0 1 {name=p80 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -140 -1820 0 1 {name=p81 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} -140 -1740 0 1 {name=l29 lab=0}
C {lab_wire.sym} -140 -1780 0 1 {name=p82 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 300 -1640 0 0 {name=x14}
C {lab_wire.sym} 80 -1760 0 0 {name=p83 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -1600 0 0 {name=p84 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 80 -1520 0 0 {name=l30 lab=0}
C {lab_wire.sym} 80 -1560 0 0 {name=p85 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 1990 -2800 0 0 {name=x15}
C {lab_wire.sym} 1770 -2920 0 0 {name=p88 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1770 -2760 0 0 {name=p89 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 1770 -2680 0 0 {name=l11 lab=0}
C {lab_wire.sym} 1770 -2720 0 0 {name=p90 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {lab_wire.sym} 850 -1720 0 1 {name=p91 sig_type=std_logic lab=clk_c8_0}
C {lab_wire.sym} 850 -1680 0 1 {name=p92 sig_type=std_logic lab=clk_c8_2}
C {lab_wire.sym} 1650 -2880 0 0 {name=p93 sig_type=std_logic lab=clk_c8_0}
C {lab_wire.sym} 1650 -2840 0 0 {name=p94 sig_type=std_logic lab=clk_c8_2}
C {res.sym} -880 -980 1 0 {name=R6
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} -880 -1040 1 0 {name=R7
value=0
footprint=1206
device=resistor
m=1}
C {latch_fast.sym} -340 -3530 0 0 {name=x7}
C {latch_fast.sym} 300 -3530 0 0 {name=x8}
C {lab_wire.sym} -560 -3650 0 0 {name=p95 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -3650 0 0 {name=p96 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -120 -3490 0 1 {name=p97 sig_type=std_logic lab=div4_clk_p}
C {lab_wire.sym} -120 -3450 0 1 {name=p98 sig_type=std_logic lab=div4_clk_n}
C {lab_wire.sym} 520 -3490 0 1 {name=p99 sig_type=std_logic lab=div4_clk_n}
C {lab_wire.sym} 520 -3450 0 1 {name=p100 sig_type=std_logic lab=div4_clk_p}
C {lab_wire.sym} -560 -3490 0 0 {name=p101 sig_type=std_logic lab=div2_tail_bias}
C {lab_wire.sym} 80 -3490 0 0 {name=p102 sig_type=std_logic lab=div2_tail_bias}
C {isource.sym} -760 -3600 0 0 {name=I8 value="PULSE(0 0u 1n 20p 20p 80p 0 1)"}
C {gnd.sym} -560 -3410 0 0 {name=l12 lab=0}
C {gnd.sym} 80 -3410 0 0 {name=l16 lab=0}
C {clk_buf.sym} -360 -4170 0 1 {name=x16}
C {lab_wire.sym} -140 -4290 0 1 {name=p103 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -140 -4130 0 1 {name=p104 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} -140 -4050 0 1 {name=l17 lab=0}
C {lab_wire.sym} -140 -4090 0 1 {name=p105 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {clk_buf.sym} 300 -3950 0 0 {name=x17}
C {lab_wire.sym} 80 -4070 0 0 {name=p106 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 -3910 0 0 {name=p107 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 80 -3830 0 0 {name=l31 lab=0}
C {lab_wire.sym} 80 -3870 0 0 {name=p108 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {lab_wire.sym} 850 -4030 0 1 {name=p109 sig_type=std_logic lab=clk_c16_0}
C {lab_wire.sym} 850 -3990 0 1 {name=p110 sig_type=std_logic lab=clk_c16_2}
C {lab_wire.sym} -1000 -3350 0 1 {name=p111 sig_type=std_logic lab=div4_clk_p}
C {lab_wire.sym} -1000 -3290 0 1 {name=p112 sig_type=std_logic lab=div4_clk_n}
C {lab_wire.sym} -760 -3350 0 1 {name=p113 sig_type=std_logic lab=clk_c8_0_s}
C {lab_wire.sym} -760 -3290 0 1 {name=p114 sig_type=std_logic lab=clk_c8_2_s}
C {res.sym} -880 -3290 1 0 {name=R8
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} -880 -3350 1 0 {name=R9
value=0
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 2220 -2880 0 1 {name=p115 sig_type=std_logic lab=clk_c8_0_s}
C {lab_wire.sym} 2220 -2840 0 1 {name=p116 sig_type=std_logic lab=clk_c8_2_s}
C {lab_wire.sym} -720 -4250 0 0 {name=p117 sig_type=std_logic lab=clk_c16_1}
C {lab_wire.sym} -720 -4210 0 0 {name=p118 sig_type=std_logic lab=clk_c16_3}
C {lab_wire.sym} -180 -2880 0 0 {name=p119 sig_type=std_logic lab=clk_c16_1_retimed}
C {lab_wire.sym} -180 -2840 0 0 {name=p120 sig_type=std_logic lab=clk_c16_3_retimed}
C {res.sym} -110 -2760 1 0 {name=R12
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} -110 -2800 1 0 {name=R13
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} -110 -2840 1 0 {name=R14
value=0
footprint=1206
device=resistor
m=1}
C {res.sym} -110 -2880 1 0 {name=R15
value=0
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 2810 -2880 0 1 {name=p123 sig_type=std_logic lab=mux2_clk_p}
C {lab_wire.sym} 2810 -2840 0 1 {name=p124 sig_type=std_logic lab=mux2_clk_n}
C {clk_buf.sym} 2550 -2800 0 0 {name=x18}
C {lab_wire.sym} 2330 -2920 0 0 {name=p125 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2330 -2760 0 0 {name=p126 sig_type=std_logic lab=clk_buf_tail_bias}
C {gnd.sym} 2330 -2680 0 0 {name=l32 lab=0}
C {lab_wire.sym} 2330 -2720 0 0 {name=p127 sig_type=std_logic lab=clk_buf_neg_tail_bias}
C {latch_fast.sym} 1120 -3950 0 0 {name=x19}
C {lab_wire.sym} 900 -4070 0 0 {name=p86 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1340 -3910 0 1 {name=p87 sig_type=std_logic lab=div4_clk_n}
C {lab_wire.sym} 1340 -3870 0 1 {name=p128 sig_type=std_logic lab=div4_clk_p}
C {lab_wire.sym} 900 -3910 0 0 {name=p129 sig_type=std_logic lab=div2_tail_bias}
C {gnd.sym} 900 -3830 0 0 {name=l33 lab=0}
C {lab_wire.sym} 1400 -4030 0 1 {name=p130 sig_type=std_logic lab=clk_c16_0_retimed}
C {lab_wire.sym} 1400 -3990 0 1 {name=p131 sig_type=std_logic lab=clk_c16_2_retimed}
C {lab_wire.sym} -180 -2800 0 0 {name=p121 sig_type=std_logic lab=clk_c16_0_retimed}
C {lab_wire.sym} -180 -2760 0 0 {name=p122 sig_type=std_logic lab=clk_c16_2_retimed}
C {latch_fast.sym} -1030 -4170 0 1 {name=x20}
C {lab_wire.sym} -810 -4290 0 1 {name=p132 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -1250 -4130 0 0 {name=p133 sig_type=std_logic lab=div4_clk_p}
C {lab_wire.sym} -1250 -4090 0 0 {name=p134 sig_type=std_logic lab=div4_clk_n}
C {lab_wire.sym} -810 -4130 0 1 {name=p135 sig_type=std_logic lab=div2_tail_bias}
C {gnd.sym} -810 -4050 0 1 {name=l34 lab=0}
C {lab_wire.sym} -1250 -4250 0 0 {name=p136 sig_type=std_logic lab=clk_c16_1_retimed}
C {lab_wire.sym} -1250 -4210 0 0 {name=p137 sig_type=std_logic lab=clk_c16_3_retimed}
