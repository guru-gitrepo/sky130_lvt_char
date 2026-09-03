## gm over Id technique
  It is a design technique, specially used in lower technology nodes. Though the traditional over drive voltage method is very useful in developing design intuition, less efficient in determining size of mosfet in lower technology  nodes where square law is hardly holds good.
  
  In gm/Id technique, following parameters of MOSFET are focused.
  |Parameters|
  |:--------:|
  | $g_m$  |
  |$g_{ds}$|
  |$c_{gg}$|
  | $I_D$  |
  |$V_{GS}$|
  |$V_{DS}$|
  |$V_{ov}$|
  |L       |
  | W      |
  
  A lookup table is constructed, in which various parameters are saved by varying operating points ($V_{GS},V_{DS},V_{SB}$) and W,L. Usually, to simplify only L, $V_{GS}$, $V_{DS}$ are considered. Because, almost many parameters we list are independent of W and $V_{SB}$ is kept at constant zero in many designs. The saved parameters are tabulated below.

  | Parameter  | Remarks                    |
  |:----------:|:---------------------------|
  |$\frac{g_m}{I_D}$   | Transconductance Efficiency  |
  |$\frac{I_D}{W}$     | Current density  |
  |$\frac{g_m}{g_{ds}}$   | Intrinsic gain  |
  |$\frac{g_{ds}}{I_D}$   | Relates intrinsic gain and current  |
  |$V_{ov}$   | To check the operating region  |
  |$\frac{g_m}{c_{gg}}$   | Speed metric|

  We can further simplify the table, by varying only L and $V_{GS}$.

  ### Methodology
  1. Select NMOS and connect two voltage sources, one across gate and source and other across drain and source.
  2. Choose $L=L_{min}$ and W not too small and not too large.
  3. Sweep $V_{GS}$ from minimum to supply voltage, keeping $V_{DS}$ constant (Preferably $V_{DD}/2$).
  4. Always make sure the MOSFET is in saturation region.
  5. Save $\frac{g_m}{I_D}, \frac{I_D}{W}, \frac{g_m}{g_{ds}}, \frac{g_{ds}}{I_D}, V_{ov}, \frac{g_m}{c_{gg}}$.
  6. Plot the following
     
  |Y axis      |X axis      |
  |:----------:|:----------:|
  |$\frac{g_m}{I_D}$  |$\frac{I_D}{W}$  |
  |$\frac{g_m}{g_{ds}}$  |$\frac{g_m}{I_D}$  |
  |$V_{ov}$  |$\frac{g_m}{I_D}$  |
  |$\frac{g_m}{c_{gg}}$  |$\frac{g_m}{I_D}$  |
  |$\frac{g_m}{g_{ds}}$  |$\frac{I_D}{W}$  |
  |$V_{ov}$  |$\frac{I_D}{W}$  |
  |$\frac{g_m}{c_{gg}}$  |$\frac{I_D}{W}$  |

  7. Repeat the same for other values of L.
  8. Finally, characterize PMOS in the similar manner.
  
