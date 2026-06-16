v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -260 -500 -260 {lab=0}
N -540 -500 -500 -500 {lab=VDD}
N 100 -500 140 -500 {lab=VDD}
N 100 -260 140 -260 {lab=0}
N -600 -460 -500 -460 {lab=#net1}
N -600 -480 -600 -460 {lab=#net1}
N 700 -680 700 -420 {lab=#net1}
N 500 -460 740 -460 {lab=#net2}
N -600 -680 700 -680 {lab=#net1}
N 500 -420 700 -420 {lab=#net1}
N 740 -720 740 -460 {lab=#net2}
N -640 -720 740 -720 {lab=#net2}
N -640 -720 -640 -420 {lab=#net2}
N -640 -420 -500 -420 {lab=#net2}
N -140 -460 140 -460 {lab=#net3}
N -140 -420 140 -420 {lab=#net4}
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
N -1260 -200 -1260 -160 {lab=0}
N -1260 -280 -1220 -280 {lab=takeoff_tail_bias}
N -1300 -280 -1260 -280 {lab=takeoff_tail_bias}
N -1300 -280 -1300 -230 {lab=takeoff_tail_bias}
N -1260 -280 -1260 -260 {lab=takeoff_tail_bias}
N -1360 -200 -1260 -200 {lab=0}
N -1360 -280 -1300 -280 {lab=takeoff_tail_bias}
N -1360 -280 -1360 -260 {lab=takeoff_tail_bias}
N -1360 -480 -1300 -480 {lab=tail_bias}
N -1360 -480 -1360 -460 {lab=tail_bias}
N -1260 -580 -1260 -540 {lab=0}
N -1360 -660 -1220 -660 {lab=VDD}
N -1360 -660 -1360 -640 {lab=VDD}
N -1360 -580 -1260 -580 {lab=0}
N -1360 -400 -1260 -400 {lab=0}
N -1260 -400 -1260 -360 {lab=0}
N -1260 -400 -1220 -400 {lab=0}
N -1220 -430 -1220 -400 {lab=0}
N -1260 -430 -1220 -430 {lab=0}
N -1260 -230 -1210 -230 {lab=0}
N -1210 -230 -1210 -200 {lab=0}
N -1260 -200 -1210 -200 {lab=0}
N -740 -420 -640 -420 {lab=#net2}
N -740 -480 -600 -480 {lab=#net1}
N -600 -680 -600 -480 {lab=#net1}
N -60 -100 -60 -20 {lab=0}
N -60 -220 -60 -160 {lab=#net3}
N 20 -100 20 -20 {lab=0}
N 20 -220 20 -160 {lab=#net4}
N -60 -460 -60 -220 {lab=#net3}
N -20 -220 20 -220 {lab=#net4}
N -20 -420 -20 -220 {lab=#net4}
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical


.option savecurrents

.param vco_fwd_w=12u
.param vco_pf_S=1
.param vco_pf_ratio='1/vco_pf_S'
.param vco_fwd_fingers=3
.param vco_pf_fingers=3
.param vco_takeoff_ratio=1
.param vco_takeoff_fingers=6
.param vco_tail_ratio=5
.param vco_tail_l=0.5u
.param vco_takeoff_tail_ratio=5
.param vco_takeoff_tail_l=0.5u
.param vco_load_w=1u
.param vco_load_r=13k
.param vco_load_l='vco_load_r/1000 * vco_load_w'
.param vco_takeoff_load_adjust=1
.param vco_takeoff_load_w=1u
.param vco_takeoff_load_r='(vco_load_r / vco_takeoff_ratio) * vco_takeoff_load_adjust'
.param vco_takeoff_load_l='vco_takeoff_load_r/1000 * vco_takeoff_load_w'
.param vco_takeoff_tail_adjust=1
.param vco_tail_current=192u

.control
save all
tran 50p 5000n
plot v(clk_0) v(clk_1) v(clk_2) v(clk_3)
.endc"}
C {vco_core_segment.sym} -320 -380 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -1280 -430 0 0 {name=M1
L="'vco_tail_l'"
W="'vco_fwd_w * (1 + vco_pf_ratio) * vco_tail_ratio'"
nf="'vco_pf_fingers'"
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
nf="'vco_fwd_fingers'"
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
C {isource.sym} -740 -450 0 0 {name=I2 value="PULSE(0 50u 1n 20p 20p 80p 0 1)"}
C {res.sym} -60 -130 0 0 {name=R1
value=1M
footprint=1206
device=resistor
m=1}
C {gnd.sym} -60 -20 0 0 {name=l2 lab=0}
C {res.sym} 20 -130 0 0 {name=R2
value=1M
footprint=1206
device=resistor
m=1}
C {gnd.sym} 20 -20 0 0 {name=l3 lab=0}
C {gnd.sym} -1260 -540 0 0 {name=l1 lab=0}
C {gnd.sym} -1260 -360 0 0 {name=l4 lab=0}
C {gnd.sym} -1260 -160 0 0 {name=l5 lab=0}
C {gnd.sym} -540 -260 0 0 {name=l6 lab=0}
C {gnd.sym} 100 -260 0 0 {name=l7 lab=0}
