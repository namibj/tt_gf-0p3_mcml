v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
V {}
S {}
F {}
E {}
N -590 -20 -310 -20 {lab=VSS}
N -740 -100 -330 -100 {lab=#net1}
N -330 -100 120 -100 {lab=#net1}
N -330 -100 -330 -80 {lab=#net1}
N -590 -130 -390 -130 {lab=VSS}
N -590 -130 -590 -20 {lab=VSS}
N -50 -130 120 -130 {lab=VSS}
N -310 -20 -50 -20 {lab=VSS}
N -50 -130 -50 -20 {lab=VSS}
N -740 -160 -610 -160 {lab=out_n}
N -610 -160 -390 -160 {lab=out_n}
N -270 -160 -30 -160 {lab=out_p}
N -30 -160 120 -160 {lab=out_p}
N -780 -590 740 -590 {lab=VSS}
N 560 -100 740 -100 {lab=#net2}
N 560 -100 560 -80 {lab=#net2}
N 580 -20 720 -20 {lab=VSS}
N 720 -130 720 -20 {lab=VSS}
N 740 -130.0168316575716 740 -130 {lab=VSS}
N 720 -130 740 -130 {lab=VSS}
N 400 -130 400 -20 {lab=VSS}
N 380 -130 400 -130 {lab=VSS}
N -330 -50 -310 -50 {lab=VSS}
N -310 -50 -310 -20 {lab=VSS}
N -740 -130 -590 -130 {lab=VSS}
N -780 -20 -590 -20 {lab=VSS}
N -270 -130 -50 -130 {lab=VSS}
N 380 -100 560 -100 {lab=#net2}
N -50 -20 400 -20 {lab=VSS}
N 560 -50 580 -50 {lab=VSS}
N 580 -50 580 -20 {lab=VSS}
N 400 -20 580 -20 {lab=VSS}
N -610 -530 -610 -160 {lab=out_n}
N -590 -560 -590 -130 {lab=VSS}
N -30 -530 -30 -160 {lab=out_p}
N -50 -560 -50 -130 {lab=VSS}
N 380 -530 380 -160 {lab=takeoff_out_n}
N 740 -530 740 -160.0168316575716 {lab=takeoff_out_p}
N 720 -560 720 -130 {lab=VSS}
N 400 -560 400 -130 {lab=VSS}
N -650 -200 -610 -200 {lab=out_n}
N -30 -200 10 -200 {lab=out_p}
N 300 -200 380 -200 {lab=takeoff_out_n}
N 740 -200 820 -200 {lab=takeoff_out_p}
N -610 -500 780 -500 {lab=out_n}
N 780 -500 780 -130 {lab=out_n}
N -310 -500 -310 -130 {lab=out_n}
N -350 -460 -30 -460 {lab=out_p}
N -350 -460 -350 -130 {lab=out_p}
N -30 -460 340 -460 {lab=out_p}
N 340 -460 340 -130 {lab=out_p}
N 360 -50 520 -50 {lab=takeoff_tail_bias}
N -410 -50 -370 -50 {lab=tail_bias}
C {symbols/nfet_03v3.sym} -760 -130 0 0 {name=M1
L=0.28u
W="'vco_fwd_w'"
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
C {symbols/nfet_03v3.sym} -370 -130 0 1 {name=M3
L=0.28u
W="'vco_fwd_w * vco_pf_ratio'"
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
C {symbols/nfet_03v3.sym} -290 -130 0 0 {name=M4
L=0.28u
W="'vco_fwd_w * vco_pf_ratio'"
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
C {symbols/nfet_03v3.sym} -350 -50 0 0 {name=M5
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
C {ipin.sym} -780 -20 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 140 -130 0 1 {name=M2
L=0.28u
W="'vco_fwd_w'"
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
C {symbols/ppolyf_u_1k.sym} -610 -560 0 1 {name=R1
W="'vco_load_w'"
L="'vco_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -30 -560 0 0 {name=R2
W="'vco_load_w'"
L="'vco_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -780 -590 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 360 -130 0 0 {name=M6
L=0.28u
W="'vco_fwd_w'"
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
C {symbols/nfet_03v3.sym} 760 -130.0168316575716 0 1 {name=M7
L=0.28u
W="'vco_fwd_w'"
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
C {symbols/nfet_03v3.sym} 540 -50 0 0 {name=M8
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
C {symbols/ppolyf_u_1k.sym} 380 -560 0 1 {name=R3
W="'vco_takeoff_load_w'"
L="'vco_takeoff_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 740 -560 0 0 {name=R4
W="'vco_load_w'"
L="'vco_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {opin.sym} -650 -200 0 1 {name=p5 sig_type=std_logic lab=out_n}
C {opin.sym} 10 -200 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -780 -130 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {ipin.sym} 160 -130 0 1 {name=p4 sig_type=std_logic lab=in_n}
C {opin.sym} 300 -200 0 1 {name=p7 sig_type=std_logic lab=takeoff_out_n}
C {opin.sym} 820 -200 0 0 {name=p8 sig_type=std_logic lab=takeoff_out_p}
C {ipin.sym} -410 -50 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {ipin.sym} 360 -50 0 0 {name=p10 sig_type=std_logic lab=takeoff_tail_bias}
