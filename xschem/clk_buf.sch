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
N -570 -110 -570 -100 {lab=#net1}
N -60 -110 -60 -100 {lab=#net1}
N -330 -100 -330 -80 {lab=#net1}
N -230 -140 -60 -140 {lab=VSS}
N -570 -180 -440 -180 {lab=#net2}
N -210 -180 -60 -180 {lab=#net3}
N -330 -50 -310 -50 {lab=VSS}
N -310 -50 -310 0 {lab=VSS}
N -570 -140 -420 -140 {lab=VSS}
N -440 -630 -440 -580 {lab=VDD}
N -210 -630 -210 -580 {lab=VDD}
N -330 -0 -310 0 {lab=VSS}
N -310 0 -230 0 {lab=VSS}
N -610 0 -420 0 {lab=VSS}
N -570 -180 -570 -170 {lab=#net2}
N -230 -550 -230 -140 {lab=VSS}
N -420 -550 -420 -140 {lab=VSS}
N -330 -20 -330 -0 {lab=VSS}
N -60 -180 -60 -170 {lab=#net3}
N -620 -630 -440 -630 {lab=VDD}
N -330 -100 -60 -100 {lab=#net1}
N -570 -100 -330 -100 {lab=#net1}
N -440 -630 -210 -630 {lab=VDD}
N -420 0 -330 -0 {lab=VSS}
N -230 -140 -230 0 {lab=VSS}
N -420 -140 -420 0 {lab=VSS}
N -740 -140 -610 -140 {lab=in_p}
N -20 -140 100 -140 {lab=in_n}
N -440 -220 -440 -180 {lab=#net2}
N 1580 -350 1580 -340 {lab=#net4}
N 1410 -380 1580 -380 {lab=VSS}
N 1070 -420 1200 -420 {lab=out_n}
N 1430 -420 1580 -420 {lab=out_p}
N 1310 -50 1330 -50 {lab=VSS}
N 1330 -50 1330 0 {lab=VSS}
N 1070 -380 1220 -380 {lab=VSS}
N 1160 -460 1200 -460 {lab=out_n}
N 1430 -460 1470 -460 {lab=out_p}
N 1200 -460 1200 -420 {lab=out_n}
N 1200 -630 1200 -580 {lab=VDD}
N 1430 -630 1430 -580 {lab=VDD}
N 1310 0 1330 0 {lab=VSS}
N 1330 0 1410 0 {lab=VSS}
N 1410 -380 1410 0 {lab=VSS}
N 1430 -460 1430 -420 {lab=out_p}
N 1220 -380 1220 0 {lab=VSS}
N 1310 -20 1310 0 {lab=VSS}
N 1580 -420 1580 -410 {lab=out_p}
N 1310 -340 1580 -340 {lab=#net4}
N 1070 -340 1310 -340 {lab=#net4}
N 1200 -630 1430 -630 {lab=VDD}
N 1220 0 1310 0 {lab=VSS}
N 490 -550 510 -550 {lab=VSS}
N 510 -600 510 -550 {lab=VSS}
N 250 -340 510 -340 {lab=VSS}
N 340 -550 450 -550 {lab=neg_tail_bias}
N 490 -600 510 -600 {lab=VSS}
N 490 -600 490 -580 {lab=VSS}
N 760 -310 760 -260 {lab=#net3}
N 490 -370 760 -370 {lab=#net5}
N 250 -370 490 -370 {lab=#net5}
N -370 -50 -370 40 {lab=tail_bias}
N -610 40 -370 40 {lab=tail_bias}
N -370 40 1270 40 {lab=tail_bias}
N 1270 -50 1270 40 {lab=tail_bias}
N 1310 -340 1310 -80 {lab=#net4}
N 1410 -550 1410 -380 {lab=VSS}
N 1220 -550 1220 -380 {lab=VSS}
N 1200 -500 1200 -460 {lab=out_n}
N 1430 -480 1430 -460 {lab=out_p}
N 490 -520 490 -370 {lab=#net5}
N -210 -630 1200 -630 {lab=VDD}
N 510 0 1220 0 {lab=VSS}
N 800 -480 1430 -480 {lab=out_p}
N 800 -480 800 -340 {lab=out_p}
N 1430 -520 1430 -480 {lab=out_p}
N 210 -500 1200 -500 {lab=out_n}
N 210 -500 210 -340 {lab=out_n}
N 1200 -520 1200 -500 {lab=out_n}
N 760 -260 1030 -260 {lab=#net3}
N -210 -260 760 -260 {lab=#net3}
N -210 -260 -210 -180 {lab=#net3}
N -210 -520 -210 -260 {lab=#net3}
N 1030 -380 1030 -260 {lab=#net3}
N 1620 -380 1620 -220 {lab=#net2}
N -440 -520 -440 -220 {lab=#net2}
N 250 -220 1620 -220 {lab=#net2}
N 250 -310 250 -220 {lab=#net2}
N -440 -220 250 -220 {lab=#net2}
N 510 -340 510 0 {lab=VSS}
N -230 0 510 0 {lab=VSS}
N 1070 -350 1070 -340 {lab=#net4}
N 1070 -420 1070 -410 {lab=out_n}
N 510 -340 760 -340 {lab=VSS}
N 510 -550 510 -340 {lab=VSS}
C {symbols/nfet_03v3.sym} -590 -140 0 0 {name=M1
L=0.28u
W="'clk_buf_fwd_w * clk_buf_in_out_ratio'"
nf="'clk_buf_fwd_fingers'"
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
C {symbols/nfet_03v3.sym} -350 -50 0 0 {name=M3
L="'clk_buf_tail_l'"
W="'clk_buf_fwd_w * clk_buf_in_out_ratio * clk_buf_tail_ratio'"
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
C {ipin.sym} -610 0 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} -40 -140 0 1 {name=M2
L=0.28u
W="'clk_buf_fwd_w * clk_buf_in_out_ratio'"
nf="'clk_buf_fwd_fingers'"
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
C {symbols/ppolyf_u_1k.sym} -440 -550 0 1 {name=R1
W="'clk_buf_load_w'"
L="'clk_buf_load_l / clk_buf_in_out_ratio'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -210 -550 0 0 {name=R2
W="'clk_buf_load_w'"
L="'clk_buf_load_l / clk_buf_in_out_ratio'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -610 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {opin.sym} 1160 -460 0 1 {name=p5 sig_type=std_logic lab=out_n}
C {opin.sym} 1470 -460 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -740 -140 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {ipin.sym} 100 -140 0 1 {name=p4 sig_type=std_logic lab=in_n}
C {ipin.sym} -610 40 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {symbols/nfet_03v3.sym} 1050 -380 0 0 {name=M4
L=0.28u
W="'clk_buf_fwd_w'"
nf="'clk_buf_fwd_fingers'"
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
C {symbols/nfet_03v3.sym} 1290 -50 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} 1600 -380 0 1 {name=M6
L=0.28u
W="'clk_buf_fwd_w'"
nf="'clk_buf_fwd_fingers'"
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
C {symbols/ppolyf_u_1k.sym} 1200 -550 0 1 {name=R3
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} 1430 -550 0 0 {name=R4
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 230 -340 2 1 {name=M7
L=0.28u
W="'clk_buf_neg_w'"
nf="'clk_buf_neg_fingers'"
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
C {symbols/nfet_03v3.sym} 470 -550 2 1 {name=M8
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
C {symbols/nfet_03v3.sym} 780 -340 2 0 {name=M9
L=0.28u
W="'clk_buf_neg_w'"
nf="'clk_buf_neg_fingers'"
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
C {ipin.sym} 340 -550 2 1 {name=p15 sig_type=std_logic lab=neg_tail_bias}
