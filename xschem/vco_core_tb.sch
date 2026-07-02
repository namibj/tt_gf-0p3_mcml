v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1500 40 760 660 {flags=graph
y1=0.958
y2=5.028
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.5e-09
x2=5.25e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="clk_0
clk_2
\\"measured; clk_0 clk_2 -\\""
color="4 5 6"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=-1
autoload=0
sim_type=table
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
N -540 -340 -500 -340 {lab=tail_bias}
N -540 -300 -500 -300 {lab=takeoff_tail_bias}
N 100 -340 140 -340 {lab=tail_bias}
N 100 -300 140 -300 {lab=takeoff_tail_bias}
N -1260 -480 -1220 -480 {lab=tail_bias}
N -1300 -480 -1260 -480 {lab=tail_bias}
N -1300 -480 -1300 -430 {lab=tail_bias}
N -1260 -480 -1260 -460 {lab=tail_bias}
N -1260 -180 -1260 -140 {lab=0}
N -1260 -280 -1220 -280 {lab=takeoff_tail_bias}
N -1300 -280 -1260 -280 {lab=takeoff_tail_bias}
N -1300 -280 -1300 -230 {lab=takeoff_tail_bias}
N -1260 -280 -1260 -260 {lab=takeoff_tail_bias}
N -1360 -180 -1260 -180 {lab=0}
N -1360 -280 -1300 -280 {lab=takeoff_tail_bias}
N -1360 -280 -1360 -260 {lab=takeoff_tail_bias}
N -1360 -480 -1300 -480 {lab=tail_bias}
N -1360 -480 -1360 -460 {lab=tail_bias}
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
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value="
**.include $::180MCU_MODELS/design.ngspice
**.lib $::180MCU_MODELS/sm141064.ngspice typical
**.lib $::180MCU_MODELS/sm141064.ngspice res_typical

* Xyce-only:
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical


.option savecurrents

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
.param vco_tail_current=128u

.param vco_load_pfet_code='30'
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
.MEASURE TRAN vco_load_pfet_code EQN\{vco_load_pfet_code\}
.MEASURE TRAN vco_tail_current EQN\{vco_tail_current\}
*.PRINT TRAN FORMAT=raw file=vco_core_tb.raw v(*) i(*)

* First we test a very condensed run, before we put the effort in for the full large one.
*.STEP OCT vco_tail_current 64u 256u 3
*.STEP vco_load_pfet_code 1 10 3

.STEP OCT vco_tail_current 4u 1024u 3
.STEP vco_load_pfet_code 1 31 1

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
C {lab_wire.sym} -540 -340 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} -540 -300 0 0 {name=p10 sig_type=std_logic lab=takeoff_tail_bias}
C {lab_wire.sym} 100 -340 0 0 {name=p11 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} 100 -300 0 0 {name=p12 sig_type=std_logic lab=takeoff_tail_bias}
C {lab_wire.sym} -1220 -480 0 1 {name=p13 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} -1220 -280 0 1 {name=p16 sig_type=std_logic lab=takeoff_tail_bias}
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
