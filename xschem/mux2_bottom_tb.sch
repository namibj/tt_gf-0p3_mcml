v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -260 -500 -260 {lab=0}
N -540 -500 -500 -500 {lab=VDD}
N -140 -340 -100 -340 {lab=clk_p}
N -140 -300 -100 -300 {lab=clk_n}
N -540 -300 -500 -300 {lab=tail_bias}
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
N -1360 -400 -1360 -380 {lab=0}
N -1260 -400 -1260 -380 {lab=0}
N 20 -460 140 -460 {lab=out_p}
N 20 -420 100 -420 {lab=out_n}
N -1210 -80 -1210 -60 {lab=common_mode}
N -1210 -280 -1210 -260 {lab=common_mode}
N -1360 -240 -1360 -220 {lab=common_mode}
N -1360 -160 -1360 -140 {lab=0}
N 100 -660 100 -420 {lab=out_n}
N 20 -690 70 -690 {lab=0}
N 70 -770 70 -690 {lab=0}
N 20 -770 70 -770 {lab=0}
N 140 -800 140 -460 {lab=out_p}
N 0 -730 0 -720 {lab=#net1}
N -200 -730 0 -730 {lab=#net1}
N 0 -740 0 -730 {lab=#net1}
N -1020 -80 -1020 -60 {lab=common_mode}
N -1020 -280 -1020 -260 {lab=common_mode}
N -1210 -200 -1140 -200 {lab=clk_p}
N -1210 -140 -1140 -140 {lab=clk_n}
N -1020 -200 -950 -200 {lab=in0_p}
N -1020 -140 -950 -140 {lab=in0_n}
N -800 -80 -800 -60 {lab=common_mode}
N -800 -280 -800 -260 {lab=common_mode}
N -800 -200 -730 -200 {lab=in1_p}
N -800 -140 -730 -140 {lab=in1_n}
N -540 -460 -500 -460 {lab=in0_p}
N -540 -420 -500 -420 {lab=in0_n}
N -540 -380 -500 -380 {lab=in1_p}
N -540 -340 -500 -340 {lab=in1_n}
N 20 -420 20 -380 {lab=out_n}
N -140 -420 20 -420 {lab=out_n}
N 20 -500 20 -460 {lab=out_p}
N -140 -460 20 -460 {lab=out_p}
C {code_shown.sym} 805 -745 0 0 {name=NGSPICE only_toplevel=true format="tcleval( @value )" value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical


.option savecurrents

.param mux_fwd_w=4u
.param mux_pf_ratio='1'
.param mux_fwd_fingers=1
.param mux_pf_fingers=1
.param mux_tail_fingers=20
.param mux_sel_ratio=1
.param mux_sel_fingers=1
.param mux_tail_ratio=50
.param mux_tail_l=1u
.param mux_load_w=1u
.param mux_load_r=12k
.param mux_load_l='mux_load_r/1000 * mux_load_w'
.param din_amplitude=0.4
.param mux_tail_current=128u

.nodeset v(net1)=2.5

.control
save all
tran 5p 50n
*plot clk_p clk_n out_p out_n in0_p in0_n in1_p in1_n v(out_p, out_n)
plot clk_p out_p out_n in0_p in1_p v(out_p, out_n)
plot clk_p in0_p in1_p v(out_p, out_n) x1.net3 x1.net5
write mux2_bottom_tb.raw
.endc"}
C {mux2_bottom_up.sym} -320 -380 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -1280 -430 0 0 {name=M1
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
C {lab_wire.sym} -540 -500 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -100 -340 0 1 {name=p5 sig_type=std_logic lab=clk_p}
C {lab_wire.sym} -100 -300 0 1 {name=p6 sig_type=std_logic lab=clk_n}
C {lab_wire.sym} -540 -300 0 0 {name=p9 sig_type=std_logic lab=tail_bias}
C {lab_wire.sym} -1220 -480 0 1 {name=p13 sig_type=std_logic lab=tail_bias}
C {vsource.sym} -1360 -610 0 1 {name=V1 value=3.3 savecurrent=false}
C {isource.sym} -1360 -430 2 0 {name=I0 value="'mux_tail_current'"}
C {lab_wire.sym} -1220 -660 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {gnd.sym} -1260 -540 0 0 {name=l1 lab=0}
C {gnd.sym} -1260 -340 0 0 {name=l4 lab=0}
C {gnd.sym} -540 -260 0 0 {name=l6 lab=0}
C {vsource.sym} -1210 -110 0 0 {name=V3 value="SIN(0 0.4 2.5G 0 0 90)"}
C {vsource.sym} -1210 -230 2 1 {name=V4 value="SIN(0 0.4 2.5G 0 0 270)"}
C {lab_wire.sym} -1210 -280 0 1 {name=p3 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -1210 -60 2 0 {name=p4 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -1140 -200 0 1 {name=p10 sig_type=std_logic lab=clk_p}
C {lab_wire.sym} -1140 -140 0 1 {name=p12 sig_type=std_logic lab=clk_n}
C {vsource.sym} -1360 -190 0 1 {name=V2 value=2.5 savecurrent=false}
C {lab_wire.sym} -1360 -240 0 1 {name=p14 sig_type=std_logic lab=common_mode}
C {gnd.sym} -1360 -140 0 0 {name=l5 lab=0}
C {symbols/ppolyf_u_1k.sym} 0 -690 0 1 {name=R1
W="'mux_load_w'"
L="'mux_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {gnd.sym} 70 -690 0 0 {name=l7 lab=0}
C {symbols/ppolyf_u_1k.sym} 0 -770 0 1 {name=R2
W="'mux_load_w'"
L="'mux_load_l'"
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {vsource.sym} -1020 -110 0 0 {name=V5 value="SIN(0 din_amplitude 0.9G 0 0 0)"}
C {vsource.sym} -1020 -230 2 1 {name=V6 value="SIN(0 din_amplitude 0.9G 0 0 180)"}
C {lab_wire.sym} -1020 -280 0 1 {name=p2 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -1020 -60 2 0 {name=p7 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -950 -200 0 1 {name=p8 sig_type=std_logic lab=in0_p}
C {lab_wire.sym} -950 -140 0 1 {name=p11 sig_type=std_logic lab=in0_n}
C {vsource.sym} -800 -110 0 0 {name=V7 value="SIN(0 din_amplitude 0.9G 0 0 90)"}
C {vsource.sym} -800 -230 2 1 {name=V8 value="SIN(0 din_amplitude 0.9G 0 0 270)"}
C {lab_wire.sym} -800 -280 0 1 {name=p15 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -800 -60 2 0 {name=p16 sig_type=std_logic lab=common_mode}
C {lab_wire.sym} -730 -200 0 1 {name=p17 sig_type=std_logic lab=in1_p}
C {lab_wire.sym} -730 -140 0 1 {name=p19 sig_type=std_logic lab=in1_n}
C {lab_wire.sym} -540 -460 0 0 {name=p20 sig_type=std_logic lab=in0_p}
C {lab_wire.sym} -540 -420 0 0 {name=p21 sig_type=std_logic lab=in0_n}
C {lab_wire.sym} -540 -380 0 0 {name=p22 sig_type=std_logic lab=in1_p}
C {lab_wire.sym} -540 -340 0 0 {name=p23 sig_type=std_logic lab=in1_n}
C {lab_wire.sym} 20 -500 0 1 {name=p24 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 20 -380 0 1 {name=p25 sig_type=std_logic lab=out_n}
