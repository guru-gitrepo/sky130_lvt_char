
.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff_ll
.param vvdd=1.8
.control
set appendwrite

dc temp 0 80 1
plot v(VOUT)

echo "ff" >> bgr_temp_plot.csv
print v(VOUT) >> bgr_temp_plot.csv
let vmax=vecmax(v(VOUT))
let vmin=vecmin(v(VOUT))
let temp_reg=((vmax-vmin)/80)
let temp_coefft=(temp_reg*1000000)/0.9
meas dc VBGR find v(VOUT) when temp-sweep=27
print temp_coefft
echo "FF_LL,$&temp_coefft,$&VBGR" >> bgr_temp.csv
.endc
