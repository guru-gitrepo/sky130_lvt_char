
.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice ff
.param length=0.35
.control
  set temp=0
  save all
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  dc V1 1.8 0 -0.01

  let gm = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  let vgs = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  let vth = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  let cgg = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  let id_abs = abs(id)
  let vsg = -vgs
  let vth_abs = abs(vth)
  let vov = vsg - vth_abs

  let w_val = 1u

  let gm_id = gm / id_abs
  let gm_gds = gm / gds
  let id_w = (id_abs / w_val) * 1000000
  let gm_cgg = gm / cgg

  plot gm_id vs id_w
  plot gm_gds vs gm_id
  plot vov vs gm_id
  plot gm_cgg vs gm_id
  plot gm_gds vs id_w
  plot vov vs id_w
  plot gm_cgg vs id_w

  set wr_vecnames
  set wr_singlescale

  wrdata pmos_l0p35_tt.dat vsg id_abs id_w gm_id gm_gds vov gm_cgg
*****************************************************************
alterparam length=0.5
reset
  set temp=0
  save all
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  dc V1 1.8 0 -0.01

  let gm = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  let vgs = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  let vth = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  let cgg = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  let id_abs = abs(id)
  let vsg = -vgs
  let vth_abs = abs(vth)
  let vov = vsg - vth_abs

  let w_val = 1u

  let gm_id = gm / id_abs
  let gm_gds = gm / gds
  let id_w = (id_abs / w_val) * 1000000
  let gm_cgg = gm / cgg

  plot gm_id vs id_w
  plot gm_gds vs gm_id
  plot vov vs gm_id
  plot gm_cgg vs gm_id
  plot gm_gds vs id_w
  plot vov vs id_w
  plot gm_cgg vs id_w

  set wr_vecnames
  set wr_singlescale

  wrdata pmos_l0p5_tt.dat vsg id_abs id_w gm_id gm_gds vov gm_cgg
*****************************************************************
alterparam length=0.7
reset
  set temp=0
  save all
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  dc V1 1.8 0 -0.01

  let gm = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  let vgs = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  let vth = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  let cgg = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  let id_abs = abs(id)
  let vsg = -vgs
  let vth_abs = abs(vth)
  let vov = vsg - vth_abs

  let w_val = 1u

  let gm_id = gm / id_abs
  let gm_gds = gm / gds
  let id_w = (id_abs / w_val) * 1000000
  let gm_cgg = gm / cgg

  plot gm_id vs id_w
  plot gm_gds vs gm_id
  plot vov vs gm_id
  plot gm_cgg vs gm_id
  plot gm_gds vs id_w
  plot vov vs id_w
  plot gm_cgg vs id_w

  set wr_vecnames
  set wr_singlescale

  wrdata pmos_l0p7_tt.dat vsg id_abs id_w gm_id gm_gds vov gm_cgg
*****************************************************************
alterparam length=1
reset
  set temp=0
  save all
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  save @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  dc V1 1.8 0 -0.01

  let gm = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[id]
  let vgs = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vgs]
  let vth = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[vth]
  let cgg = @m.xm1.msky130_fd_pr__pfet_01v8_lvt[cgg]

  let id_abs = abs(id)
  let vsg = -vgs
  let vth_abs = abs(vth)
  let vov = vsg - vth_abs

  let w_val = 1u

  let gm_id = gm / id_abs
  let gm_gds = gm / gds
  let id_w = (id_abs / w_val) * 1000000
  let gm_cgg = gm / cgg

  plot gm_id vs id_w
  plot gm_gds vs gm_id
  plot vov vs gm_id
  plot gm_cgg vs gm_id
  plot gm_gds vs id_w
  plot vov vs id_w
  plot gm_cgg vs id_w

  set wr_vecnames
  set wr_singlescale

  wrdata pmos_l1p0_tt.dat vsg id_abs id_w gm_id gm_gds vov gm_cgg
 .endc
