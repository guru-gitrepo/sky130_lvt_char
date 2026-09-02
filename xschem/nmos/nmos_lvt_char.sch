v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1690 -460 1690 -430 {lab=#net1}
N 1690 -460 1820 -460 {lab=#net1}
N 1860 -570 1860 -490 {lab=#net2}
N 1860 -570 2010 -570 {lab=#net2}
N 2010 -570 2010 -530 {lab=#net2}
N 1860 -430 1860 -370 {lab=0}
N 1860 -460 1900 -460 {lab=0}
N 1900 -460 1900 -420 {lab=0}
N 1860 -420 1900 -420 {lab=0}
C {title.sym} 1440 -200 0 0 {name=l1 author="Guruprasad"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1840 -460 0 0 {name=M1
W=1
L=0.15
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
C {vsource.sym} 1690 -400 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} 2010 -500 0 0 {name=V2 value=0.9 savecurrent=false}
C {gnd.sym} 1860 -370 0 0 {name=l2 lab=0}
C {gnd.sym} 1690 -370 0 0 {name=l3 lab=0}
C {gnd.sym} 2010 -470 0 0 {name=l4 lab=0}
C {code_shown.sym} 2130 -490 0 0 {name=Spice only_toplevel=false value=
"
.include gm_id.sp
"}
