set terminal svg size 1800,3000 enhanced font "DejaVu Sans,14" \
    background rgb "#0d1117"
set output "nmos_lvt_all.svg"
# ------------------------------------------------
# Common style
# ------------------------------------------------
set border lc rgb "#ffffff"
set tics textcolor rgb "#ffffff"
set xlabel textcolor rgb "#ffffff"
set ylabel textcolor rgb "#ffffff"
set grid lc rgb "#dddddd" lw 0.5
set key right top textcolor rgb "#c9d1d9"
# Four channel lengths
# 0.15 -> blue
# 0.30 -> green
# 0.60 -> yellow
# 1.00 -> red

set multiplot layout 4,2 margins 0.07,0.97,0.04,0.97 \
    spacing 0.06,0.06

# ==================================================
# 1. gm/Id vs Id/W
# ==================================================
set title "gm/Id vs Id/W"
set xlabel "Id/W (µA/µm)"
set ylabel "gm/Id (S/S)"

plot \
    "nmos_lmin_tt.dat" using 4:5 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 4:5 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 4:5 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"  using 4:5 with lines lw 2 lc rgb "#d29922" title "L =1.00 µm"

# ==================================================
# 2. gm/gds vs gm/Id
# ==================================================
set title "gm/gds vs gm/Id"
set xlabel "gm/Id (S/S)"
set ylabel "gm/gds"

plot \
    "nmos_lmin_tt.dat" using 5:6 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 5:6 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 5:6 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 5:6 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 3. Vov vs gm/Id
# ==================================================
set title "Vov vs gm/Id"
set xlabel "gm/Id (S/S)"
set ylabel "Vov (V)"

plot \
    "nmos_lmin_tt.dat" using 5:7 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 5:7 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 5:7 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 5:7 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 4. gm/Cgg vs gm/Id
# ==================================================
set title "gm/Cgg vs gm/Id"
set xlabel "gm/Id (S/S)"
set ylabel "gm/Cgg (1/s)"

plot \
    "nmos_lmin_tt.dat" using 5:8 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 5:8 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 5:8 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 5:8 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 5. gm/gds vs Id/W
# ==================================================
set title "gm/gds vs Id/W"
set xlabel "Id/W (µA/µm)"
set ylabel "gm/gds"

plot \
    "nmos_lmin_tt.dat" using 4:6 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 4:6 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 4:6 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 4:6 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 6. Vov vs Id/W
# ==================================================
set title "Vov vs Id/W"
set xlabel "Id/W (µA/µm)"
set ylabel "Vov (V)"

plot \
    "nmos_lmin_tt.dat" using 4:7 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 4:7 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 4:7 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 4:7 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 7. gm/Cgg vs Id/W
# ==================================================
set title "gm/Cgg vs Id/W"
set xlabel "Id/W (µA/µm)"
set ylabel "gm/Cgg (1/s)"

plot \
    "nmos_lmin_tt.dat" using 4:8 with lines lw 2 lc rgb "#58a6ff" title "L = 0.15 µm", \
    "nmos_l0p3_tt.dat"  using 4:8 with lines lw 2 lc rgb "#3fb950" title "L = 0.30 µm", \
    "nmos_l0p6_tt.dat"  using 4:8 with lines lw 2 lc rgb "#d29922" title "L = 0.60 µm", \
    "nmos_l1p0_tt.dat"    using 4:8 with lines lw 2 lc rgb "#f85149" title "L = 1.00 µm"

# ==================================================
# 8. Empty panel
# ==================================================
unset title
unset xlabel
unset ylabel
unset key

unset multiplot
set output
