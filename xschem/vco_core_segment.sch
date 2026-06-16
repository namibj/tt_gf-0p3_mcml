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
N -740 -110 -740 -100 {lab=#net1}
N 120 -110 120 -100 {lab=#net1}
N -330 -100 -330 -80 {lab=#net1}
N -590 -140 -390 -140 {lab=VSS}
N -590 -140 -590 0 {lab=VSS}
N -50 -140 120 -140 {lab=VSS}
N -740 -180 -610 -180 {lab=out_n}
N -610 -180 -390 -180 {lab=out_n}
N -270 -180 -30 -180 {lab=out_p}
N -30 -180 120 -180 {lab=out_p}
N 380 -630 740 -630 {lab=VDD}
N 560 -100 740 -100 {lab=#net2}
N 560 -100 560 -80 {lab=#net2}
N 580 0 720 0 {lab=VSS}
N 400 -140 400 0 {lab=VSS}
N 380 -140 400 -140 {lab=VSS}
N -330 -50 -310 -50 {lab=VSS}
N -310 -50 -310 0 {lab=VSS}
N -740 -140 -590 -140 {lab=VSS}
N -270 -140 -50 -140 {lab=VSS}
N 380 -110 380 -100 {lab=#net2}
N -50 0 400 0 {lab=VSS}
N 560 -50 580 -50 {lab=VSS}
N 580 -50 580 0 {lab=VSS}
N -650 -220 -610 -220 {lab=out_n}
N -30 -210 10 -210 {lab=out_p}
N 300 -210 380 -210 {lab=takeoff_out_n}
N 740 -200 820 -200 {lab=takeoff_out_p}
N -350 -460 -350 -140 {lab=out_p}
N 340 -460 340 -140 {lab=out_p}
N 360 -50 520 -50 {lab=takeoff_tail_bias}
N -410 -50 -370 -50 {lab=tail_bias}
N -610 -220 -610 -180 {lab=out_n}
N -50 -140 -50 0 {lab=VSS}
N 380 -210 380 -170 {lab=takeoff_out_n}
N 740 -630 740 -580 {lab=VDD}
N -610 -630 -610 -580 {lab=VDD}
N -30 -630 -30 -580 {lab=VDD}
N 380 -630 380 -580 {lab=VDD}
N -330 -0 -310 0 {lab=VSS}
N -390 -100 -330 -100 {lab=#net1}
N -270 -100 120 -100 {lab=#net1}
N -310 0 -50 0 {lab=VSS}
N -780 0 -590 0 {lab=VSS}
N 380 -100 560 -100 {lab=#net2}
N -350 -460 -30 -460 {lab=out_p}
N -30 -460 340 -460 {lab=out_p}
N 740 -520 740 -200 {lab=takeoff_out_p}
N -780 -630 -610 -630 {lab=VDD}
N -610 -630 -30 -630 {lab=VDD}
N -30 -630 380 -630 {lab=VDD}
N -30 -460 -30 -210 {lab=out_p}
N -390 -110 -390 -100 {lab=#net1}
N -270 -110 -270 -100 {lab=#net1}
N -740 -180 -740 -170 {lab=out_n}
N -390 -180 -390 -170 {lab=out_n}
N -610 -500 -610 -220 {lab=out_n}
N 380 -520 380 -210 {lab=takeoff_out_n}
N -50 -550 -50 -140 {lab=VSS}
N -610 -520 -610 -500 {lab=out_n}
N -30 -520 -30 -460 {lab=out_p}
N -740 -100 -390 -100 {lab=#net1}
N -330 -100 -270 -100 {lab=#net1}
N -310 -500 780 -500 {lab=out_n}
N -610 -500 -310 -500 {lab=out_n}
N -310 -500 -310 -140 {lab=out_n}
N 720 -140.0168316575716 720 0 {lab=VSS}
N 720 -550 720 -140.0168316575716 {lab=VSS}
N -590 -550 -590 -140 {lab=VSS}
N 400 -550 400 -140 {lab=VSS}
N -330 -20 -330 -0 {lab=VSS}
N 560 -20 560 -0 {lab=VSS}
N 560 -0 580 0 {lab=VSS}
N -590 0 -330 -0 {lab=VSS}
N 400 0 560 -0 {lab=VSS}
N -270 -180 -270 -170 {lab=out_p}
N 120 -180 120 -170 {lab=out_p}
N -30 -210 -30 -180 {lab=out_p}
N 740 -110.0168316575716 740 -100 {lab=#net2}
N 720 -140.0168316575716 740 -140.0168316575716 {lab=VSS}
N 740 -200 740 -170.0168316575716 {lab=takeoff_out_p}
N 780 -500 780 -140.0168316575716 {lab=out_n}
C {symbols/nfet_03v3.sym} -760 -140 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -370 -140 0 1 {name=M3
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
C {symbols/nfet_03v3.sym} -290 -140 0 0 {name=M4
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
C {ipin.sym} -780 0 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 140 -140 0 1 {name=M2
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
C {symbols/ppolyf_u_1k.sym} -610 -550 0 1 {name=R1
W="'vco_load_w'"
L="'vco_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -30 -550 0 0 {name=R2
W="'vco_load_w'"
L="'vco_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -780 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 360 -140 0 0 {name=M6
L=0.28u
W="'vco_fwd_w * vco_takeoff_ratio'"
nf="'vco_takeoff_fingers'"
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
C {symbols/nfet_03v3.sym} 760 -140.0168316575716 0 1 {name=M7
L=0.28u
W="'vco_fwd_w * vco_takeoff_ratio'"
nf="'vco_takeoff_fingers'"
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
C {symbols/ppolyf_u_1k.sym} 380 -550 0 1 {name=R3
W="'vco_takeoff_load_w'"
L="'vco_takeoff_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 740 -550 0 0 {name=R4
W="'vco_takeoff_load_w'"
L="'vco_takeoff_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {opin.sym} -650 -220 0 1 {name=p5 sig_type=std_logic lab=out_n}
C {opin.sym} 10 -210 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -780 -140 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {ipin.sym} 160 -140 0 1 {name=p4 sig_type=std_logic lab=in_n}
C {opin.sym} 300 -210 0 1 {name=p7 sig_type=std_logic lab=takeoff_out_n}
C {opin.sym} 820 -200 0 0 {name=p8 sig_type=std_logic lab=takeoff_out_p}
C {ipin.sym} -410 -50 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {ipin.sym} 360 -50 0 0 {name=p10 sig_type=std_logic lab=takeoff_tail_bias}
