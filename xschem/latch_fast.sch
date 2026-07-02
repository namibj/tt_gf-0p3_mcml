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
N -590 -140 -390 -140 {lab=VSS}
N 100 -140 120 -140 {lab=VSS}
N -740 -180 -610 -180 {lab=out_n}
N -610 -180 -390 -180 {lab=out_n}
N -270 -180 -30 -180 {lab=out_p}
N -30 -180 120 -180 {lab=out_p}
N -330 130 -310 130 {lab=VSS}
N -310 130 -310 180 {lab=VSS}
N -720 -140 -590 -140 {lab=VSS}
N -270 -140 -50 -140 {lab=VSS}
N -650 -220 -610 -220 {lab=out_n}
N -30 -210 10 -210 {lab=out_p}
N -350 -460 -350 -140 {lab=out_p}
N -610 -220 -610 -180 {lab=out_n}
N -610 -630 -610 -580 {lab=VDD}
N -30 -630 -30 -580 {lab=VDD}
N -330 180 -310 180 {lab=VSS}
N -130 180 100 180 {lab=VSS}
N -720 180 -550 180 {lab=VSS}
N -350 -460 -30 -460 {lab=out_p}
N -780 -630 -610 -630 {lab=VDD}
N -610 -630 -30 -630 {lab=VDD}
N -30 -460 -30 -210 {lab=out_p}
N -740 -180 -740 -170 {lab=out_n}
N -390 -180 -390 -170 {lab=out_n}
N -610 -500 -610 -220 {lab=out_n}
N -50 -550 -50 -140 {lab=VSS}
N -610 -520 -610 -500 {lab=out_n}
N -30 -520 -30 -460 {lab=out_p}
N -610 -500 -310 -500 {lab=out_n}
N -310 -500 -310 -140 {lab=out_n}
N -590 -550 -590 -140 {lab=VSS}
N -330 160 -330 180 {lab=VSS}
N -270 -180 -270 -170 {lab=out_p}
N 120 -180 120 -170 {lab=out_p}
N -30 -210 -30 -180 {lab=out_p}
N -130 -0.01683165757160054 -100 -0.01683165757160054 {lab=VSS}
N -130 -0.01683165757160054 -130 180 {lab=VSS}
N -580 0 -550 0 {lab=VSS}
N -550 0 -550 180 {lab=VSS}
N -310 180 -130 180 {lab=VSS}
N -580 30 -580 60 {lab=#net1}
N -330 60 -330 100 {lab=#net1}
N -580 -60 -580 -30 {lab=#net2}
N -100 -80 -100 -30.0168316575716 {lab=#net3}
N -740 -110 -740 -60 {lab=#net2}
N 120 -110 120 -60 {lab=#net2}
N -390 -110 -390 -80 {lab=#net3}
N -270 -110 -270 -80 {lab=#net3}
N -550 180 -330 180 {lab=VSS}
N -580 -60 120 -60 {lab=#net2}
N -390 -80 -270 -80 {lab=#net3}
N -270 -80 -100 -80 {lab=#net3}
N -390 130 -370 130 {lab=tail_bias}
N -640 0 -620 0 {lab=clk_p}
N -720 -140 -720 180 {lab=VSS}
N 100 -140 100 180 {lab=VSS}
N -740 -60 -580 -60 {lab=#net2}
N -740 -140 -720 -140 {lab=VSS}
N -780 180 -720 180 {lab=VSS}
N -50 -140 100 -140 {lab=VSS}
N -580 60 -330 60 {lab=#net1}
N -330 60 -100 60 {lab=#net1}
N -100 29.9831683424284 -100 60 {lab=#net1}
N -60 -0.01683165757160054 -40 -0.01683165757160054 {lab=clk_n}
N -40 -0.01683165757160054 -40 0 {lab=clk_n}
C {symbols/nfet_03v3.sym} -760 -140 0 0 {name=M1
L=0.28u
W="'latch_fwd_w'"
nf="'latch_fwd_fingers'"
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
W="'latch_fwd_w * latch_pf_ratio'"
nf="'latch_pf_fingers'"
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
W="'latch_fwd_w * latch_pf_ratio'"
nf="'latch_pf_fingers'"
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
C {symbols/nfet_03v3.sym} -350 130 0 0 {name=M5
L="'latch_tail_l'"
W="\{latch_fwd_w * (1 + latch_pf_ratio) * latch_tail_ratio\}"
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
C {ipin.sym} -780 180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 140 -140 0 1 {name=M2
L=0.28u
W="'latch_fwd_w'"
nf="'latch_fwd_fingers'"
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
W="'latch_load_w'"
L="'latch_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -30 -550 0 0 {name=R2
W="'latch_load_w'"
L="'latch_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -780 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -600 0 0 0 {name=M6
L=0.28u
W="'latch_fwd_w * latch_clk_ratio'"
nf="'latch_clk_fingers'"
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
C {symbols/nfet_03v3.sym} -80 -0.01683165757160054 0 1 {name=M7
L=0.28u
W="'latch_fwd_w * latch_clk_ratio'"
nf="'latch_clk_fingers'"
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
C {opin.sym} -650 -220 0 1 {name=p5 sig_type=std_logic lab=out_n}
C {opin.sym} 10 -210 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -780 -140 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {ipin.sym} 160 -140 0 1 {name=p4 sig_type=std_logic lab=in_n}
C {ipin.sym} -640 0 0 0 {name=p7 sig_type=std_logic lab=clk_p}
C {ipin.sym} -40 0 0 1 {name=p8 sig_type=std_logic lab=clk_n}
C {ipin.sym} -390 130 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
