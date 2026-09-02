
.lib /usr/local/share/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.control
  save all
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
  save @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]

dc V1 0 1.8 0.001

  let gm = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
  let gds = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[gds]
  let id = @m.xm1.msky130_fd_pr__nfet_01v8_lvt[id]

  let gmid = gm / id
  let gmgds = gm / gds

  plot gmgds vs gmid
.endc
