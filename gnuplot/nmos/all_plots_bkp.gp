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

set lmargin 9
set rmargin 4
set tmargin 3
set bmargin 3

set multiplot layout 4,2 \
    margins 0.07,0.97,0.04,0.97 \
    spacing 0.06,0.06

# ------------------------------------------------
# 1. gm/Id vs Id/W
# ------------------------------------------------

set xlabel "I_D / W  (µA/µm)"
set ylabel "g_m / I_D  (V⁻¹)"

set logscale x
unset logscale y

plot "nmos_lmin_tt.dat" using 4:5 \
     with lines lw 2 lc rgb "#58a6ff" notitle


# ------------------------------------------------
# 2. gm/gds vs gm/Id
# ------------------------------------------------

unset logscale x

set xlabel "g_m / I_D  (V⁻¹)"
set ylabel "g_m / g_ds"

plot "nmos_lmin_tt.dat" using 5:6 \
     with lines lw 2 lc rgb "#58a6ff" notitle


# ------------------------------------------------
# 3. Vov vs gm/Id
# ------------------------------------------------

set xlabel "g_m / I_D  (V⁻¹)"
set ylabel "V_OV  (V)"

plot "nmos_lmin_tt.dat" using 5:7 \
     with lines lw 2 lc rgb "#58a6ff" notitle


# ------------------------------------------------
# 4. gm/Cgg vs gm/Id
# ------------------------------------------------

set xlabel "g_m / I_D  (V⁻¹)"
set ylabel "g_m / C_GG  (s⁻¹)"

set logscale y

plot "nmos_lmin_tt.dat" using 5:8 \
     with lines lw 2 lc rgb "#58a6ff" notitle

unset logscale y


# ------------------------------------------------
# 5. gm/gds vs Id/W
# ------------------------------------------------

set xlabel "I_D / W  (µA/µm)"
set ylabel "g_m / g_ds"

set logscale x

plot "nmos_lmin_tt.dat" using 4:6 \
     with lines lw 2 lc rgb "#58a6ff" notitle


# ------------------------------------------------
# 6. Vov vs Id/W
# ------------------------------------------------

set xlabel "I_D / W  (µA/µm)"
set ylabel "V_OV  (V)"

plot "nmos_lmin_tt.dat" using 4:7 \
     with lines lw 2 lc rgb "#58a6ff" notitle


# ------------------------------------------------
# 7. gm/Cgg vs Id/W
# ------------------------------------------------

set xlabel "I_D / W  (µA/µm)"
set ylabel "g_m / C_GG  (s⁻¹)"

set logscale y

plot "nmos_lmin_tt.dat" using 4:8 \
     with lines lw 2 lc rgb "#58a6ff" notitle

unset logscale x
unset logscale y

# ------------------------------------------------

unset multiplot
set output
