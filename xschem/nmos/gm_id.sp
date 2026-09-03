
.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.param length=0.15
.control
  save all
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]

  dc V1 0 1.8 0.01

  let gm = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]
  let vgs = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vgs]
  let vth = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[vth]
  let vov = vgs - vth
  let cgg = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[cgg]
  let w_val = 1u

  let gm_id = gm / id
  let gm_gds = gm / gds
  let id_w = id / w_val
  let gm_cgg = gm / cgg

  plot gm_id vs id_w
  plot gm_gds vs gm_id
  plot vov vs gm_id
  plot gm_cgg vs gm_id
  plot gm_gds vs id_w
  plot vov vs id_w
  plot gm_cgg vs id_w

.endc
