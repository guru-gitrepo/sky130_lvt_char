
set terminal svg size 1200,900 enhanced font "DejaVu Sans,10"  background rgb "#0d1117"
set output "gm_id_vs_id_w.svg"

set border lc rgb "#8b949e"
set tics textcolor rgb "#c9d1d9"
set xlabel "I_D / W  (µA/µm)" textcolor rgb "#c9d1d9"
set ylabel "g_m / I_D  (V⁻¹)" textcolor rgb "#c9d1d9"

set grid lc rgb "#30363d" lw 0.5

set logscale x
set lmargin 10
set rmargin 4
set tmargin 3
set bmargin 5

plot "nmos_lmin_tt.dat" using 4:5 \
     with lines lw 2 lc rgb "#58a6ff" notitle
