
set terminal svg size 900,600 enhanced font "DejaVu Sans,14"  background rgb "#0d1117"
set output "vov_vs_gm_id.svg"

set border lc rgb "#ffffff"
set tics textcolor rgb "#ffffff"
set xlabel "g_m / I_D  (V⁻¹)" textcolor rgb "#ffffff"
set ylabel "V_{OV} (V)" textcolor rgb "#ffffff"

set grid lc rgb "#dddddd" lw 0.5

set lmargin 9
set rmargin 3
set tmargin 2
set bmargin 4

plot "nmos_lmin_tt.dat" using 5:7 \
     with lines lw 2 lc rgb "#58a6ff" notitle
