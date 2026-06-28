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
N -200 -180 -30 -180 {lab=out_p}
N -330 130 -310 130 {lab=VSS}
N -310 130 -310 180 {lab=VSS}
N -650 -220 -610 -220 {lab=out_n}
N -30 -220 10 -220 {lab=out_p}
N -610 -220 -610 -180 {lab=out_n}
N -610 -630 -610 -580 {lab=VDD}
N -30 -630 -30 -580 {lab=VDD}
N -330 180 -310 180 {lab=VSS}
N -780 -630 -610 -630 {lab=VDD}
N -610 -630 -30 -630 {lab=VDD}
N -30 -220 -30 -180 {lab=out_p}
N -610 -520 -610 -220 {lab=out_n}
N -30 -520 -30 -220 {lab=out_p}
N -590 -550 -590 -140 {lab=VSS}
N -330 160 -330 180 {lab=VSS}
N -330 60 -330 100 {lab=#net1}
N -390 130 -370 130 {lab=tail_bias}
N -670 -140 -590 -140 {lab=VSS}
N -670 180 -330 180 {lab=VSS}
N -460 60 -330 60 {lab=#net1}
N -460 40 -460 60 {lab=#net1}
N -890 40 -890 60 {lab=#net1}
N -330 60 -200 60 {lab=#net1}
N -200 40 -200 60 {lab=#net1}
N -200 60 230 60 {lab=#net1}
N -950 10 -930 10 {lab=in0_p}
N -950 -70 -930 -70 {lab=sel_n}
N -260 10 -240 10 {lab=in1_n}
N -420 10 -400 10 {lab=in1_p}
N -890 60 -460 60 {lab=#net1}
N -890 -40 -890 -20 {lab=#net2}
N -460 -40 -460 -20 {lab=#net3}
N -420 -70 -400 -70 {lab=sel_p}
N -460 -180 -460 -100 {lab=out_n}
N -610 -180 -460 -180 {lab=out_n}
N -890 -180 -890 -100 {lab=out_n}
N -890 -180 -610 -180 {lab=out_n}
N -890 -70 -670 -70 {lab=VSS}
N -670 -70 -670 10 {lab=VSS}
N -670 10 -460 10 {lab=VSS}
N -890 10 -670 10 {lab=VSS}
N -670 -70 -460 -70 {lab=VSS}
N -670 -140 -670 -70 {lab=VSS}
N 20 -70 230 -70 {lab=VSS}
N -50 -550 -50 -140 {lab=VSS}
N -50 -140 20 -140 {lab=VSS}
N 20 -70 20 10 {lab=VSS}
N -200 10 20 10 {lab=VSS}
N 20 -140 20 -70 {lab=VSS}
N -200 -70 20 -70 {lab=VSS}
N -670 10 -670 180 {lab=VSS}
N -780 180 -670 180 {lab=VSS}
N 20 10 20 180 {lab=VSS}
N -310 180 20 180 {lab=VSS}
N -200 -180 -200 -100 {lab=out_p}
N -30 -180 230 -180 {lab=out_p}
N -260 -70 -240 -70 {lab=sel_p}
N -200 -40 -200 -20 {lab=#net4}
N -340 -400 -320 -400 {lab=sel_n}
N -340 -440 -320 -440 {lab=sel_p}
N 20 10 230 10 {lab=VSS}
N 230 -40 230 -20 {lab=#net5}
N 230 -180 230 -100 {lab=out_p}
N 230 40 230 60 {lab=#net1}
N 270 -70 290 -70 {lab=sel_n}
N 270 10 290 10 {lab=in0_n}
C {symbols/nfet_03v3.sym} -910 10 0 0 {name=M1
L=0.28u
W="'mux_fwd_w'"
nf="'mux_fwd_fingers'"
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
C {ipin.sym} -780 180 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 250 10 0 1 {name=M2
L=0.28u
W="'mux_fwd_w'"
nf="'mux_fwd_fingers'"
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
W="'mux_load_w'"
L="'mux_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -30 -550 0 0 {name=R2
W="'mux_load_w'"
L="'mux_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -780 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -910 -70 0 0 {name=M6
L=0.28u
W="'mux_fwd_w * mux_sel_ratio'"
nf="'mux_sel_fingers'"
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
C {symbols/nfet_03v3.sym} 250 -70 0 1 {name=M7
L=0.28u
W="'mux_fwd_w * mux_sel_ratio'"
nf="'mux_sel_fingers'"
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
C {opin.sym} 10 -220 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -950 10 0 0 {name=p3 sig_type=std_logic lab=in0_p}
C {ipin.sym} 290 10 0 1 {name=p4 sig_type=std_logic lab=in0_n}
C {ipin.sym} -340 -440 0 0 {name=p7 sig_type=std_logic lab=sel_p}
C {ipin.sym} -340 -400 0 0 {name=p8 sig_type=std_logic lab=sel_n}
C {ipin.sym} -390 130 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {ipin.sym} -400 10 0 1 {name=p10 sig_type=std_logic lab=in1_p}
C {ipin.sym} -260 10 0 0 {name=p11 sig_type=std_logic lab=in1_n}
C {symbols/nfet_03v3.sym} -440 10 0 1 {name=M3
L=0.28u
W="'mux_fwd_w'"
nf="'mux_fwd_fingers'"
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
C {symbols/nfet_03v3.sym} -220 10 0 0 {name=M4
L=0.28u
W="'mux_fwd_w'"
nf="'mux_fwd_fingers'"
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
C {symbols/nfet_03v3.sym} -440 -70 0 1 {name=M8
L=0.28u
W="'mux_fwd_w * mux_sel_ratio'"
nf="'mux_sel_fingers'"
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
C {symbols/nfet_03v3.sym} -220 -70 0 0 {name=M9
L=0.28u
W="'mux_fwd_w * mux_sel_ratio'"
nf="'mux_sel_fingers'"
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
C {lab_wire.sym} -320 -440 0 1 {name=p12 sig_type=std_logic lab=sel_p}
C {lab_wire.sym} -320 -400 0 1 {name=p13 sig_type=std_logic lab=sel_n}
C {lab_wire.sym} 290 -70 0 1 {name=p14 sig_type=std_logic lab=sel_n}
C {lab_wire.sym} -950 -70 0 0 {name=p15 sig_type=std_logic lab=sel_n}
C {lab_wire.sym} -400 -70 0 1 {name=p16 sig_type=std_logic lab=sel_p}
C {lab_wire.sym} -260 -70 0 0 {name=p17 sig_type=std_logic lab=sel_p}
