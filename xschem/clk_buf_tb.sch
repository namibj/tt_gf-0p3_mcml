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
N -600 -460 -500 -460 {lab=in_p}
N -600 -480 -600 -460 {lab=in_p}
N 700 -660 700 -420 {lab=#net1}
N 580 -460 740 -460 {lab=#net2}
N 620 -420 700 -420 {lab=#net1}
N -640 -720 -640 -420 {lab=in_n}
N -640 -420 -500 -420 {lab=in_n}
N -540 -340 -500 -340 {lab=tail_bias}
N 100 -340 140 -340 {lab=tail_bias}
N -1080 -380 -1040 -380 {lab=tail_bias}
N -1120 -380 -1080 -380 {lab=tail_bias}
N -1120 -380 -1120 -330 {lab=tail_bias}
N -1080 -380 -1080 -360 {lab=tail_bias}
N -1180 -380 -1120 -380 {lab=tail_bias}
N -1180 -380 -1180 -360 {lab=tail_bias}
N -1080 -480 -1080 -440 {lab=0}
N -1180 -560 -1040 -560 {lab=VDD}
N -1180 -560 -1180 -540 {lab=VDD}
N -1180 -480 -1080 -480 {lab=0}
N -1180 -280 -1080 -280 {lab=0}
N -1080 -280 -1080 -240 {lab=0}
N -1080 -280 -1040 -280 {lab=0}
N -1040 -330 -1040 -280 {lab=0}
N -1080 -330 -1040 -330 {lab=0}
N -600 -680 -600 -480 {lab=in_p}
N -1180 -300 -1180 -280 {lab=0}
N -1080 -300 -1080 -280 {lab=0}
N 580 -100 580 -20 {lab=0}
N 660 -100 660 -20 {lab=0}
N 660 -220 660 -160 {lab=#net1}
N 580 -460 580 -160 {lab=#net2}
N 620 -220 660 -220 {lab=#net1}
N 620 -420 620 -220 {lab=#net1}
N 500 -460 580 -460 {lab=#net2}
N 500 -420 620 -420 {lab=#net1}
N -140 -460 -100 -460 {lab=out_p}
N 600 -660 700 -660 {lab=#net1}
N 600 -800 740 -800 {lab=#net2}
N 620 -690 670 -690 {lab=0}
N -100 -420 -100 -340 {lab=out_n}
N -140 -420 -100 -420 {lab=out_n}
N -20 -460 140 -460 {lab=#net3}
N -100 -460 -80 -460 {lab=out_p}
N -100 -420 -80 -420 {lab=out_n}
N -20 -420 140 -420 {lab=#net4}
N -100 -540 -100 -460 {lab=out_p}
N -780 -420 -640 -420 {lab=in_n}
N -780 -480 -600 -480 {lab=in_p}
N -780 -360 -780 -340 {lab=common_mode}
N -780 -560 -780 -540 {lab=common_mode}
N 670 -770 670 -690 {lab=0}
N 620 -770 670 -770 {lab=0}
N 740 -800 740 -460 {lab=#net2}
N 600 -730 600 -720 {lab=common_mode}
N 400 -730 600 -730 {lab=common_mode}
N 600 -740 600 -730 {lab=common_mode}
N 340 -730 400 -730 {lab=common_mode}
N 280 -730 340 -730 {lab=common_mode}
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical


.option savecurrents

.param clk_buf_fwd_w=6u
.param clk_buf_fwd_fingers=2
.param clk_buf_tail_fingers=20
.param clk_buf_tail_ratio=50
.param clk_buf_tail_l=1u
.param clk_buf_load_w=1u
.param clk_buf_load_r=4k
.param clk_buf_load_l='clk_buf_load_r/1000 * clk_buf_load_w'
.param clk_buf_tail_current=512u

.control
save all
tran 5p 5n
plot in_p in_n out_p out_n x1.net1
.endc"}
C {clk_buf.sym} -320 -380 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -1100 -330 0 0 {name=M1
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
C {clk_buf.sym} 320 -380 0 0 {name=x2}
C {lab_wire.sym} -540 -500 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 100 -500 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -540 -340 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} 100 -340 0 0 {name=p11 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} -1040 -380 0 1 {name=p13 sig_type=std_logic lab=tail_bias}
C {vsource.sym} -1180 -510 0 1 {name=V1 value=3.3 savecurrent=false}
C {isource.sym} -1180 -330 2 0 {name=I0 value="'clk_buf_tail_current'"}
C {lab_wire.sym} -1040 -560 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {vsource.sym} -780 -390 0 0 {name=V2 value="SIN(0 0.2 2.5G 0 0 0)"}
C {gnd.sym} -1080 -440 0 0 {name=l1 lab=0}
C {gnd.sym} -1080 -240 0 0 {name=l4 lab=0}
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
C {lab_wire.sym} -100 -540 0 1 {name=p3 sig_type=std_logic lab=out_p}
C {lab_wire.sym} -100 -340 0 1 {name=p4 sig_type=std_logic lab=out_n}
C {cccs.sym} 20 -390 0 0 {name=F1 vnam=V3 value=0.75}
C {symbols/ppolyf_u_1k.sym} 600 -690 0 1 {name=R1
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {gnd.sym} 670 -690 0 0 {name=l2 lab=0}
C {cccs.sym} 20 -490 2 1 {name=F2 vnam=V4 value=0.75}
C {lab_wire.sym} -600 -680 0 1 {name=p5 sig_type=std_logic lab=in_p}
C {lab_wire.sym} -640 -720 0 1 {name=p6 sig_type=std_logic lab=in_n}
C {vsource.sym} -50 -420 3 1 {name=V3 value=0 savecurrent=false}
C {vsource.sym} -50 -460 3 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 20 -360 0 0 {name=l3 lab=0}
C {gnd.sym} 20 -520 2 1 {name=l10 lab=0}
C {vsource.sym} -780 -510 2 1 {name=V5 value="SIN(0 0.2 2.5G 0 0 180)"}
C {lab_wire.sym} -780 -560 0 1 {name=p7 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -780 -340 2 0 {name=p8 sig_type=std_logic lab=common_mode}
C {symbols/ppolyf_u_1k.sym} 600 -770 0 1 {name=R2
W="'clk_buf_load_w'"
L="'clk_buf_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_wire.sym} 280 -730 0 0 {name=p10 sig_type=std_logic lab=common_mode}
C {capa.sym} 340 -700 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 340 -670 0 0 {name=l5 lab=0}
