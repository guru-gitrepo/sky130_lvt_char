
set terminal svg size 900,600 enhanced font "DejaVu Sans,14"  background rgb "#0d1117"
set output "gm_id_vs_id_w.svg"

set border lc rgb "#ffffff"
set tics textcolor rgb "#ffffff"
set xlabel "I_D / W  (µA/µm)" textcolor rgb "#ffffff"
set ylabel "g_m / I_D  (V⁻¹)" textcolor rgb "#ffffff"

set grid lc rgb "#dddddd" lw 0.5

set logscale x
set lmargin 9
set rmargin 4
set tmargin 3
set bmargin 4

set key right top textcolor "#ffffff"

plot \
    "nmos_lmin_tt.dat"  using 4:5 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 4:5 with lines lw 2 lc rgb "#d29922" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 4:5 with lines lw 2 lc rgb "#bc8cff" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"  using 4:5 with lines lw 2 lc rgb "#ff7b72" title "L = 1.00 µm"

