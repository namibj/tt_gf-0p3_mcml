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
N -420 -140 -420 0 {lab=VSS}
N -230 -140 -60 -140 {lab=VSS}
N -570 -180 -440 -180 {lab=out_n}
N -210 -180 -60 -180 {lab=out_p}
N -330 -50 -310 -50 {lab=VSS}
N -310 -50 -310 0 {lab=VSS}
N -570 -140 -420 -140 {lab=VSS}
N -480 -220 -440 -220 {lab=out_n}
N -210 -220 -170 -220 {lab=out_p}
N -480 -50 -370 -50 {lab=tail_bias}
N -440 -220 -440 -180 {lab=out_n}
N -230 -140 -230 0 {lab=VSS}
N -440 -630 -440 -580 {lab=VDD}
N -210 -630 -210 -580 {lab=VDD}
N -330 -0 -310 0 {lab=VSS}
N -310 0 -230 0 {lab=VSS}
N -610 0 -420 0 {lab=VSS}
N -570 -180 -570 -170 {lab=out_n}
N -230 -550 -230 -140 {lab=VSS}
N -440 -520 -440 -220 {lab=out_n}
N -210 -520 -210 -210 {lab=out_p}
N -420 -550 -420 -140 {lab=VSS}
N -330 -20 -330 -0 {lab=VSS}
N -60 -180 -60 -170 {lab=out_p}
N -210 -210 -210 -180 {lab=out_p}
N -620 -630 -440 -630 {lab=VDD}
N -330 -100 -60 -100 {lab=#net1}
N -570 -100 -330 -100 {lab=#net1}
N -440 -630 -210 -630 {lab=VDD}
N -420 0 -330 -0 {lab=VSS}
C {symbols/nfet_03v3.sym} -590 -140 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} -350 -50 0 0 {name=M3
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
C {ipin.sym} -610 0 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} -40 -140 0 1 {name=M2
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
C {symbols/ppolyf_u_1k.sym} -440 -550 0 1 {name=R1
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k.sym} -210 -550 0 0 {name=R2
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} -610 -630 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {opin.sym} -480 -220 0 1 {name=p5 sig_type=std_logic lab=out_n}
C {opin.sym} -170 -220 0 0 {name=p6 sig_type=std_logic lab=out_p}
C {ipin.sym} -610 -140 0 0 {name=p3 sig_type=std_logic lab=in_p}
C {ipin.sym} -20 -140 0 1 {name=p4 sig_type=std_logic lab=in_n}
C {ipin.sym} -480 -50 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
