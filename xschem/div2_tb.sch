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
N 580 -460 740 -460 {lab=#net2}
N -600 -680 700 -680 {lab=#net1}
N 620 -420 700 -420 {lab=#net1}
N 740 -720 740 -460 {lab=#net2}
N -640 -720 740 -720 {lab=#net2}
N -640 -720 -640 -420 {lab=#net2}
N -640 -420 -500 -420 {lab=#net2}
N -60 -460 140 -460 {lab=#net3}
N -20 -420 140 -420 {lab=#net4}
N -140 -340 -100 -340 {lab=clk_p}
N -140 -300 -100 -300 {lab=clk_n}
N 500 -340 540 -340 {lab=clk_n}
N 500 -300 540 -300 {lab=clk_p}
N -540 -340 -500 -340 {lab=tail_bias}
N 100 -340 140 -340 {lab=tail_bias}
N -1260 -480 -1220 -480 {lab=tail_bias}
N -1300 -480 -1260 -480 {lab=tail_bias}
N -1300 -480 -1300 -430 {lab=tail_bias}
N -1260 -480 -1260 -460 {lab=tail_bias}
N -1360 -480 -1300 -480 {lab=tail_bias}
N -1360 -480 -1360 -460 {lab=tail_bias}
N -1260 -580 -1260 -540 {lab=0}
N -1360 -660 -1220 -660 {lab=VDD}
N -1360 -660 -1360 -640 {lab=VDD}
N -1360 -580 -1260 -580 {lab=0}
N -1360 -380 -1260 -380 {lab=0}
N -1260 -380 -1260 -340 {lab=0}
N -1260 -380 -1220 -380 {lab=0}
N -1220 -430 -1220 -380 {lab=0}
N -1260 -430 -1220 -430 {lab=0}
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
N -1110 -80 -1110 -60 {lab=common_mode}
N -1110 -280 -1110 -260 {lab=common_mode}
N -1110 -200 -980 -200 {lab=clk_p}
N -1110 -140 -980 -140 {lab=clk_n}
N -1260 -240 -1260 -220 {lab=common_mode}
N -1260 -160 -1260 -140 {lab=0}
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical


.option savecurrents

.param latch_fwd_w=2u
.param latch_pf_ratio='1'
.param latch_fwd_fingers=1
.param latch_pf_fingers=1
.param latch_tail_fingers=20
.param latch_clk_ratio=0.5
.param latch_clk_fingers=1
.param latch_tail_ratio=50
.param latch_tail_l=1u
.param latch_load_w=1u
.param latch_load_r=12k
.param latch_load_l='latch_load_r/1000 * latch_load_w'
.param latch_tail_current=64u

.nodeset v(net1)=2.5

.control
save all
tran 5p 50n
plot clk_p clk_n net1 net2 net3 net4 x1.net1
.endc"}
C {latch_fast.sym} -320 -380 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -1280 -430 0 0 {name=M1
L="'latch_tail_l'"
W="'latch_fwd_w * (1 + latch_pf_ratio) * latch_tail_ratio'"
nf="'latch_tail_fingers'"
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
C {latch_fast.sym} 320 -380 0 0 {name=x2}
C {lab_wire.sym} -540 -500 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 100 -500 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -100 -340 0 1 {name=p5 sig_type=std_logic lab=clk_p}
C {lab_wire.sym} -100 -300 0 1 {name=p6 sig_type=std_logic lab=clk_n}
C {lab_wire.sym} 540 -340 0 1 {name=p7 sig_type=std_logic lab=clk_n}
C {lab_wire.sym} 540 -300 0 1 {name=p8 sig_type=std_logic lab=clk_p}
C {lab_wire.sym} -540 -340 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} 100 -340 0 0 {name=p11 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} -1220 -480 0 1 {name=p13 sig_type=std_logic lab=tail_bias}
C {vsource.sym} -1360 -610 0 1 {name=V1 value=3.3 savecurrent=false}
C {isource.sym} -1360 -430 2 0 {name=I0 value="'latch_tail_current'"}
C {lab_wire.sym} -1220 -660 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {isource.sym} -740 -450 0 0 {name=I2 value="PULSE(0 0u 1n 20p 20p 80p 0 1)"}
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
C {vsource.sym} -1110 -110 0 0 {name=V2 value="SIN(0 0.2 2.5G 0 0 90)"}
C {vsource.sym} -1110 -230 2 1 {name=V5 value="SIN(0 0.2 2.5G 0 0 270)"}
C {lab_wire.sym} -1110 -280 0 1 {name=p3 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -1110 -60 2 0 {name=p4 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -980 -200 0 1 {name=p10 sig_type=std_logic lab=clk_p}
C {lab_wire.sym} -980 -140 0 1 {name=p12 sig_type=std_logic lab=clk_n}
C {vsource.sym} -1260 -190 0 1 {name=V3 value=2.5 savecurrent=false}
C {lab_wire.sym} -1260 -240 0 1 {name=p14 sig_type=std_logic lab=common_mode}
C {gnd.sym} -1260 -140 0 0 {name=l5 lab=0}
