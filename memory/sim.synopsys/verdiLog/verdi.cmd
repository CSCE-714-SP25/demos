verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/faculty/d/davidkebo/csce-714/2025-spring/demos/memory/sim.synopsys/simv" \
           -args \
           "-ucli +UVM_TESTNAME=mem_wr_rd_test +UVM_TIMEOUT=100000 +ntb_random_seed=1 -cm line+tgl+assert+fsm+branch -cm_dir cov_work/test.vdb -cm_log /dev/null -assert nopostproc -cm_name test_mem_wr_rd_test"
debImport "-dbdir" \
          "/home/faculty/d/davidkebo/csce-714/2025-spring/demos/memory/sim.synopsys/simv.daidir"
debLoadSimResult \
           /home/faculty/d/davidkebo/csce-714/2025-spring/demos/memory/sim.synopsys/mem_wr_rd_test.fsdb
wvCreateWindow
verdiWindowResize -win $_Verdi_1 "306" "122" "900" "700"
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/_vcs_msglog"
verdiSetActWin -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/tbench_top/DUT/unnamed\$\$_0"
wvGetSignalSetScope -win $_nWave2 "/tbench_top"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/DUT"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/DUT/unnamed\$\$_0"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/DRIVER"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/MONITOR"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/driver_cb"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/monitor_cb"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/DUT/unnamed\$\$_0"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/DRIVER"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/MONITOR"
wvGetSignalSetScope -win $_nWave2 "/tbench_top/intf/driver_cb"
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tbench_top/intf/driver_cb/addr\[1:0\]} \
{/tbench_top/intf/driver_cb/rd_en} \
{/tbench_top/intf/driver_cb/wdata\[7:0\]} \
{/tbench_top/intf/driver_cb/rdata\[7:0\]} \
{/tbench_top/intf/driver_cb/wr_en} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/tbench_top/intf/driver_cb/addr\[1:0\]} \
{/tbench_top/intf/driver_cb/rd_en} \
{/tbench_top/intf/driver_cb/wdata\[7:0\]} \
{/tbench_top/intf/driver_cb/rdata\[7:0\]} \
{/tbench_top/intf/driver_cb/wr_en} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvGetSignalClose -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
