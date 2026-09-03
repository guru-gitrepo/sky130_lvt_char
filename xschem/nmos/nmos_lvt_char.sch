v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1680 -380 1680 -350 {lab=#net1}
N 1680 -380 1810 -380 {lab=#net1}
N 1850 -490 1850 -410 {lab=#net2}
N 1850 -490 2000 -490 {lab=#net2}
N 2000 -490 2000 -450 {lab=#net2}
N 1850 -350 1850 -290 {lab=0}
N 1850 -380 1890 -380 {lab=0}
N 1890 -380 1890 -340 {lab=0}
N 1850 -340 1890 -340 {lab=0}
C {title.sym} 1440 -200 0 0 {name=l1 author="Guruprasad"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1830 -380 0 0 {name=M1
W=1
L=\{length\}
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} 1680 -320 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} 2000 -420 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} 1850 -290 0 0 {name=l2 lab=0}
C {gnd.sym} 1680 -290 0 0 {name=l3 lab=0}
C {gnd.sym} 2000 -390 0 0 {name=l4 lab=0}
C {code_shown.sym} 2120 -410 0 0 {name=Spice only_toplevel=false value=
"
.include gm_id.sp
"}
