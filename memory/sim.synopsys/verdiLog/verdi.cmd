verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec \
           "/home/faculty/d/davidkebo/csce-714/2025-spring/demos/memory/sim.synopsys/simv" \
           -args \
           "-ucli +UVM_TESTNAME=mem_wr_rd_test +UVM_TIMEOUT=100000 +ntb_random_seed=1 -cm line+tgl+assert+fsm+branch -cm_dir cov_work/test.vdb -cm_log /dev/null -assert nopostproc -cm_name test_mem_wr_rd_test"
debImport "-dbdir" \
          "/home/faculty/d/davidkebo/csce-714/2025-spring/demos/memory/sim.synopsys/simv.daidir"
